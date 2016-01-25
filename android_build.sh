#!/bin/bash

. settings.sh

BASEDIR=$(pwd)
TOOLCHAIN_PREFIX=${BASEDIR}/toolchain-android

for i in "${SUPPORTED_ARCHITECTURES[@]}"
do
  rm -rf ${TOOLCHAIN_PREFIX}
  ./x264_build.sh $i $BASEDIR 0 || exit 1
  ./ffmpeg_build.sh $i $BASEDIR 0 || exit 1
done

rm -rf ${TOOLCHAIN_PREFIX}
