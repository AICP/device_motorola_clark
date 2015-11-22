LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := modem_init
LOCAL_MODULE_TAGS := optional

$(shell mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg; \
        ln -sf /fsg/0.img $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/0.img; \
        ln -sf /fsg/1.img $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/1.img; \
        ln -sf /fsg/2.img $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/2.img; \
        ln -sf /fsg/3.img $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/3.img; \
        ln -sf /fsg/att.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/att.mbn; \
        ln -sf /fsg/bundle_release $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/bundle_release; \
        ln -sf /fsg/clark_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_1.img.gz; \
        ln -sf /fsg/clark_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_2.img.gz; \
        ln -sf /fsg/clark_3.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_3.img.gz; \
        ln -sf /fsg/clark_att_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_att_2.img.gz; \
        ln -sf /fsg/clark_emea_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_emea_1.img.gz; \
        ln -sf /fsg/clark_latam_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_latam_1.img.gz; \
        ln -sf /fsg/clark_latam_dsds_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_latam_dsds_1.img.gz; \
        ln -sf /fsg/clark_sprint_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_sprint_2.img.gz; \
        ln -sf /fsg/clark_super_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_super_1.img.gz; \
        ln -sf /fsg/clark_super_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_super_2.img.gz; \
        ln -sf /fsg/clark_super_3.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_super_3.img.gz; \
        ln -sf /fsg/clark_tmo_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_tmo_2.img.gz; \
        ln -sf /fsg/clark_verizon_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/clark_verizon_2.img.gz; \
        ln -sf /fsg/kinzie_emea_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/kinzie_emea_2.img.gz; \
        ln -sf /fsg/kinzie_super_2.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/kinzie_super_2.img.gz; \
        ln -sf /fsg/kinzie_super_3.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/kinzie_super_3.img.gz; \
        ln -sf /fsg/kinzie_verizon_1.img.gz $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/kinzie_verizon_1.img.gz; \
        ln -sf /fsg/sprint.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/sprint.mbn; \
        ln -sf /fsg/super.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/super.mbn; \
        ln -sf /fsg/tmo.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/tmo.mbn; \
        ln -sf /fsg/usc.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/usc.mbn; \
        ln -sf /fsg/vzw.mbn $(TARGET_OUT)/rfs/msm/mpss/readonly/fsg/vzw.mbn)

include $(BUILD_SHARED_LIBRARY)
