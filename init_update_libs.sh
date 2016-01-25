#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "Patching ffmpeg configure file"
cd ffmpeg
patch configure ../ffmpeg_android_config.diff
cd ..
echo "============================================"

