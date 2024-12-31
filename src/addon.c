#define NAPI_VERSION 9
#include <node_api.h>
#include <dlfcn.h>
#include <stdio.h>
#include "../lib.h"

// Function pointers for shared library functions
// typedef int (*add_func)(int, int);
// typedef void (*hello_func)();

// napi_value AddWrapper(napi_env env, napi_callback_info info) {
//     napi_value args[2];
//     size_t argc = 2;

//     napi_get_cb_info(env, info, &argc, args, NULL, NULL);
//     if (argc < 2) {
//         napi_throw_error(env, NULL, "Two arguments expected");
//         return NULL;
//     }

//     int32_t a, b;
//     napi_get_value_int32(env, args[0], &a);
//     napi_get_value_int32(env, args[1], &b);

//     // Call the `add` function
//     int result = add(a, b);

//     // Return the result
//     napi_value napi_result;
//     napi_create_int32(env, result, &napi_result);
//     return napi_result;
// }

napi_value HelloWrapper(napi_env env, napi_callback_info info) {

    // Calling the `hello` function
    hello();

    return NULL;
    // Return undefined
    // napi_value undefined;
    // napi_get_undefined(env, &undefined);
    // return undefined;
}

napi_value Init(napi_env env, napi_value exports) {
    napi_status status;
    napi_value addFn, helloFn;

    // status = napi_create_function(env, NULL, 0, AddWrapper, NULL, &addFn);
    // if (status != napi_ok) return NULL;
    // status = napi_set_named_property(env, exports, "add", addFn);
    // if (status != napi_ok) return NULL;

    status = napi_create_function(env, NULL, 0, HelloWrapper, NULL, &helloFn);
    if (status != napi_ok) return NULL;
    status = napi_set_named_property(env, exports, "hello", helloFn);
    if (status != napi_ok) return NULL;

    return exports;
}

NAPI_MODULE(NODE_GYP_MODULE_NAME, Init)
