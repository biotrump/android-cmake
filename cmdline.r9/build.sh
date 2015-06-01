#!/bin/bash
OS_ARCH=`uname -p`

export ANDROID_NDK_ROOT=$HOME/NDK/android-ndk-r10e
echo $ANDROID_NDK_ROOT
$ANDROID_NDK_ROOT/ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk

