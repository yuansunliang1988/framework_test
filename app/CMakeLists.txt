include_directories(${CMAKE_SOURCE_DIR}/framework)

add_executable(hello_world MACOSX_BUNDLE main.mm)
set_target_properties(hello_world PROPERTIES
    MACOSX_BUNDLE_BUNDLE_NAME "HelloWorld"
    MACOSX_BUNDLE_GUI_IDENTIFIER "com.example.helloworld"
    MACOSX_BUNDLE_BUNDLE_VERSION "1.0"
    MACOSX_BUNDLE_SHORT_VERSION_STRING "1.0"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY ""
    MACOSX_FRAMEWORK_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/../Info.plist"
    XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "KM56KD59W4"
    XCODE_ATTRIBUTE_PRODUCT_BUNDLE_IDENTIFIER "com.zuler.todesk.licode"
    XCODE_ATTRIBUTE_CODE_SIGN_STYLE "Manual"
    XCODE_ATTRIBUTE_SKIP_INSTALL "NO"
    XCODE_EMBED_FRAMEWORKS "HelloFramework"
)
target_link_libraries(hello_world "-framework Cocoa" HelloFramework)
