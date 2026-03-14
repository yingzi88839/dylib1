cmake_minimum_required(VERSION 3.15)
project(JunshiCheat)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 设置目标架构
set(ARCHS "arm64;arm64e" CACHE STRING "Target architectures")

# 查找iOS SDK
execute_process(
    COMMAND xcrun -sdk iphoneos --show-sdk-path
    OUTPUT_VARIABLE IOS_SDK_PATH
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

# 设置编译选项
set(CMAKE_CXX_FLAGS "-fobjc-arc -fPIC")
set(CMAKE_OSX_SYSROOT ${IOS_SDK_PATH})
set(CMAKE_OSX_ARCHITECTURES "${ARCHS}")
set(CMAKE_OSX_DEPLOYMENT_TARGET "12.0")

# 添加源文件
set(SOURCES
    JunshiCheat.mm
)

# 创建动态库
add_library(JunshiCheat SHARED ${SOURCES})

# 链接框架
target_link_libraries(JunshiCheat
    "-framework Foundation"
    "-framework UIKit"
    "-framework ObjectiveC"
)

# 设置输出名称
set_target_properties(JunshiCheat PROPERTIES
    OUTPUT_NAME "JunshiCheat"
    PREFIX ""
    SUFFIX ".dylib"
)
