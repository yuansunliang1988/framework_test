#!/bin/bash
set -e

# 1. 清理旧的构建
rm -rf build
mkdir build
cd build

# 2. 生成 Xcode 工程
cmake -G Xcode ..

echo "Xcode project generated."
# 3. 构建并归档
xcodebuild -project HelloWorldCocoaApp.xcodeproj \
  -scheme hello_world \
  -configuration Release \
  -archivePath ./hello_world.xcarchive \
  archive
echo "Xcode project built and archived."
# 4. 导出 .app 到 build/ExportedProducts
xcodebuild -exportArchive \
  -archivePath ./hello_world.xcarchive \
  -exportPath ./ExportedProducts \
  -exportOptionsPlist ../ExportOptions.plist

echo "Archive and export finished."
