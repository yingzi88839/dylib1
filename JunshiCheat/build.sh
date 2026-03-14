#!/bin/bash

# 军师超自然 dylib 构建脚本
# 仅用于学习交流，请勿用于非法用途

echo "======================================"
echo "军师超自然 - dylib 构建脚本"
echo "======================================"

# 创建输出目录
mkdir -p build

# 检查是否在 macOS 上运行
if [[ "$(uname -s)" != "Darwin" ]]; then
    echo "错误：此脚本需要在 macOS 上运行"
    exit 1
fi

# 检查 Xcode 命令行工具
if ! command -v xcrun &> /dev/null; then
    echo "错误：需要安装 Xcode 命令行工具"
    echo "运行：xcode-select --install"
    exit 1
fi

echo ""
echo "开始编译 arm64 架构..."
clang++ -arch arm64 -dynamiclib -o build/JunshiCheat_arm64.dylib \
    -framework Foundation \
    -framework UIKit \
    -framework ObjectiveC \
    -isysroot $(xcrun -sdk iphoneos --show-sdk-path) \
    -miphoneos-version-min=12.0 \
    -fobjc-arc \
    JunshiCheat.mm

if [ $? -ne 0 ]; then
    echo "arm64 编译失败！"
    exit 1
fi

echo "arm64 编译成功！"

echo ""
echo "开始编译 x86_64 架构 (模拟器)..."
clang++ -arch x86_64 -dynamiclib -o build/JunshiCheat_x86_64.dylib \
    -framework Foundation \
    -framework UIKit \
    -framework ObjectiveC \
    -isysroot $(xcrun -sdk iphonesimulator --show-sdk-path) \
    -mios-simulator-version-min=12.0 \
    -fobjc-arc \
    JunshiCheat.mm

if [ $? -ne 0 ]; then
    echo "x86_64 编译失败！"
    exit 1
fi

echo "x86_64 编译成功！"

echo ""
echo "创建通用二进制文件..."
lipo -create build/JunshiCheat_arm64.dylib build/JunshiCheat_x86_64.dylib -output build/JunshiCheat.dylib

if [ $? -ne 0 ]; then
    echo "创建通用二进制文件失败！"
    exit 1
fi

echo ""
echo "======================================"
echo "构建完成！"
echo "======================================"
echo ""
echo "输出文件："
ls -lh build/
echo ""
file build/JunshiCheat.dylib
echo ""
echo "使用说明："
echo "1. 将 build/JunshiCheat.dylib 注入到游戏中"
echo "2. 游戏启动后会显示悬浮作弊按钮"
echo "3. 点击按钮打开作弊菜单"
