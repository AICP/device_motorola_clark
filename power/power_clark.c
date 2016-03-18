/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define LOG_TAG "PowerHAL"
#include <utils/Log.h>

#include <hardware/hardware.h>
#include <hardware/power.h>

#define TAP_TO_WAKE_NODE "/sys/android_touch/doubletap2wake"

static void power_init(struct power_module *module)
{
}

static void power_set_interactive(struct power_module *module, int on)
{
}

static void sysfs_write(char *path, char *s)
{
    ALOGI("path=%s , value=%s", path, s);
    char buf[80];
    int len;
    int fd = open(path, O_WRONLY);

    if (fd < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error opening %s: %s\n", path, buf);
        return;
    }

    len = write(fd, s, strlen(s));
    if (len < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error writing to %s: %s\n", path, buf);
    }

    int clo = close(fd);
    if (clo < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error closing %s: %s", path, buf);
    }
}

static void set_feature(struct power_module *module, feature_t feature, int state)
{
        ALOGI("set_feature");
    if (feature == POWER_FEATURE_DOUBLE_TAP_TO_WAKE) {
        ALOGI("feature = DOUBLE_TAP_TO_WAKE");
        char buf[64];
        snprintf(buf, 64, "%d", state);
        //ALOGI("buf=%s, state=%s", buf, state);
        sysfs_write(TAP_TO_WAKE_NODE, buf);
    }
}

static void power_hint(struct power_module *module, power_hint_t hint,
                       void *data) {
    switch (hint) {
    default:
        break;
    }
}

static struct hw_module_methods_t power_module_methods = {
    .open = NULL,
};

struct power_module HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .module_api_version = POWER_MODULE_API_VERSION_0_2,
        .hal_api_version = HARDWARE_HAL_API_VERSION,
        .id = POWER_HARDWARE_MODULE_ID,
        .name = "Default Power HAL",
        .author = "The Android Open Source Project",
        .methods = &power_module_methods,
    },

    .init = power_init,
    .setInteractive = power_set_interactive,
    .powerHint = power_hint,
    .setFeature = set_feature,
};
