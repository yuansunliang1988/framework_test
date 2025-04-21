#!/bin/bash
set -e
mkdir -p build
cd build
cmake -G Xcode ..
open HelloWorldCocoaApp.xcodeproj
