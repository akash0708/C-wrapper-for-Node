cmd_Release/obj.target/addon/src/addon.o := cc -o Release/obj.target/addon/src/addon.o ../src/addon.c '-DNODE_GYP_MODULE_NAME=addon' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION' -I/usr/include/nodejs/include/node -I/usr/include/nodejs/src -I/usr/include/nodejs/deps/openssl/config -I/usr/include/nodejs/deps/openssl/openssl/include -I/usr/include/nodejs/deps/uv/include -I/usr/include/nodejs/deps/zlib -I/usr/include/nodejs/deps/v8/include  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -ggdb -m64 -O3 -fno-omit-frame-pointer  -MMD -MF ./Release/.deps/Release/obj.target/addon/src/addon.o.d.raw   -c
Release/obj.target/addon/src/addon.o: ../src/addon.c \
 /usr/include/nodejs/src/node_api.h \
 /usr/include/nodejs/src/js_native_api.h \
 /usr/include/nodejs/src/js_native_api_types.h \
 /usr/include/nodejs/src/node_api_types.h ../src/../lib.h
../src/addon.c:
/usr/include/nodejs/src/node_api.h:
/usr/include/nodejs/src/js_native_api.h:
/usr/include/nodejs/src/js_native_api_types.h:
/usr/include/nodejs/src/node_api_types.h:
../src/../lib.h: