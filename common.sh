#!/bin/bash
#Ref:  https://docs.pocoproject.org/current/99300-AndroidPlatformNotes.html
path_to_android_sdk=$1
path_to_android_ndk=$2	#maybe in $path_to_android_sdk/ndk/<versionNum>/
android_abi=$3 # something like: armeabi-v7a
cmake_version=$4 # for example: 3.18.1
android_api_level=$5 # for example: (android 7 , 24) , (android 5 , 21)

output_dir=poco_build/$android_abi/
rm -rfv $output_dir

$1/cmake/$cmake_version/bin/cmake -Spoco-poco-1.9.0-release/ -Bpoco_build/$android_abi/ -G'Ninja' -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=$path_to_android_sdk/cmake/$cmake_version/bin/ninja -DCMAKE_TOOLCHAIN_FILE=$path_to_android_ndk/build/cmake/android.toolchain.cmake -DANDROID_NATIVE_API_LEVEL=$android_api_level -DANDROID_ABI=$android_abi -DCMAKE_C_COMPILER=clang
