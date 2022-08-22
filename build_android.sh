#!/bin/bash
chmod +x common.sh

#requirement:
#sudo apt-get install libpq-dev #ubuntu
#sudo apt-get install libmysql++-dev #ubuntu
#sudo apt-get install unixodbc unixodbc-dev  #ubuntu

#path_to_android_sdk=$1
#path_to_android_ndk=$2	#maybe in $path_to_android_sdk/ndk/<versionNum>/
#cmake_version=$3 		# for example: 3.18.1
#android_api_level=$4		# for example: (android 7 , 24) , (android 5 , 21)

 # android-arm android-arm64 android-x86 android-x86_64 etc(maybe: armeabi-v7a , arm64-v8a ,  linux-aarch64 , ...).
for VARIABLE in arm64-v8a armeabi-v7a x86 x86_64
do
    ./common.sh $1 $2 $VARIABLE $3 $4
done
