#!/bin/bash
set -e

# 1. ����ɵĹ���
rm -rf build
mkdir build
cd build

# 2. ���� Xcode ����
cmake -G Xcode ..

echo "Xcode project generated."
# 3. �������鵵
xcodebuild -project HelloWorldCocoaApp.xcodeproj \
  -scheme hello_world \
  -configuration Release \
  -archivePath ./hello_world.xcarchive \
  archive
echo "Xcode project built and archived."
# 4. ���� .app �� build/ExportedProducts
xcodebuild -exportArchive \
  -archivePath ./hello_world.xcarchive \
  -exportPath ./ExportedProducts \
  -exportOptionsPlist ../ExportOptions.plist

echo "Archive and export finished."
