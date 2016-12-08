# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        hw_gui.cpp \
        hw_exif.c

LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils
LOCAL_MULTILIB := both
LOCAL_MODULE := libshim_general
LOCAL_LDLIBS := -llog
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := hw_log.c
LOCAL_MODULE := libshim_log
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := hw_ril.cpp
LOCAL_MODULE := libshim_ril
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)