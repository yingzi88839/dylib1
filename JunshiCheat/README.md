# 军师超自然 - 修改插件 (dylib)
==============================

## 项目简介
-----------
这是一个为《军师超自然》游戏的iOS dylib 注入插件，包含各种实用功能。

## 功能列表
-----------
### 1. 渲染设置
- 雾效果开关
- 雾开始/结束距离调节
- 雾模式设置
- 雾颜色设置
- 环境天空盒数量调节

### 2. 悬浮菜单
- 可拖动的悬浮按钮
- 美观的UI界面
- 方便的功能开关

### 3. 游戏相关功能（根据dump文件分析）
- 更多功能待发现...

## 文件说明
-----------
- `JunshiCheat.mm` - 主源代码文件 (Objective-C++)
- `JunshiCheat.xm` - Theos版本源代码 (Logos语法)
- `TRANSLATED.md` - dump文件中字段和类的翻译文档
- `build.sh` - 本地构建脚本
- `CMakeLists.txt` - CMake构建配置
- `Makefile` - Theos构建配置
- `.github/workflows/` - GitHub Actions自动构建配置

## 构建说明
-----------

### 方法一：使用 GitHub Actions 自动构建 (推荐)
1. Fork 此仓库
2. 将代码推送到您的仓库
3. GitHub Actions 会自动开始构建
4. 构建完成后，在 Actions 页面下载生成的 artifact

### 方法二：本地构建 (macOS)
1. 确保已安装 Xcode 命令行工具
   ```bash
   xcode-select --install
   ```
2. 运行构建脚本
   ```bash
   chmod +x build.sh
   ./build.sh
   ```
3. 编译好的文件在 `build/` 目录中

### 方法三：使用 Theos 构建 (越狱插件)
1. 安装 Theos
2. 运行
   ```bash
   make clean
   make package
   ```

## 使用方法
-----------
1. 构建或下载 `JunshiCheat.dylib`
2. 使用注入工具（如 Frida、Dobby 等）将 dylib 注入到游戏进程中
3. 启动游戏
4. 游戏启动后会显示一个蓝色的悬浮"作弊"按钮
5. 点击按钮打开作弊菜单
6. 选择要启用的功能

## 开发说明
-----------
### 添加新功能
1. 查看 `TRANSLATED.md` 了解可用的字段和类
2. 在 `JunshiCheat.mm` 中添加新的功能开关
3. 在 `CheatMenuController` 中添加对应的UI
4. 在 `applySettings` 方法中添加功能实现

### 重要提示
- 代码中的Unity函数调用地址需要根据实际dump文件中的地址进行修改
- dump文件中的地址在 `script.json` 中可以找到
- 根据不同的游戏版本，地址可能会有所不同

## 翻译文档
-----------
详细的字段和类名翻译请查看 [TRANSLATED.md](TRANSLATED.md)

## 注意事项
-----------
- 仅供学习交流使用
- 请勿用于非法用途
- 使用此插件可能导致游戏账号被封禁
- 请自行承担使用风险

## 免责声明
-----------
本项目仅供学习和研究使用，作者不对使用此代码造成的任何后果负责。


