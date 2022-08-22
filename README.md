# Poco-for-android
Build poco for android (multi ABIs , x86 , arm , arm64 , ...) correspond to documents

### UseCase
```
./common.sh <sdk_path> <nd_path> <cmake_version_in_sdk_path> <ABI_ARCH> <android_api_level>
```

or for multi platforms that defined(default):

```
./build_android.sh <sdk_path> <nd_path> <cmake_version_in_sdk_path> <android_api_level>
```

for example i used it like this(correspond my platform's config):
```
./common.sh /home/pcname/Android/Sdk /home/pcname/Android/Sdk/ndk/21.4.7075529 x86 3.22.1 21
```
