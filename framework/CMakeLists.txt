add_library(HelloFramework SHARED
    HelloFramework.mm
)
message(STATUS "HelloFramework: ${CMAKE_CURRENT_SOURCE_DIR}")

set_target_properties(HelloFramework PROPERTIES
    FRAMEWORK TRUE
    FRAMEWORK_VERSION A
    MACOSX_FRAMEWORK_IDENTIFIER com.zuler.helloframework
    PUBLIC_HEADER "${CMAKE_CURRENT_SOURCE_DIR}/HelloFramework.h"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development"
    MACOSX_FRAMEWORK_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Info.plist"
    XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "KM56KD59W4"
    XCODE_ATTRIBUTE_PRODUCT_BUNDLE_IDENTIFIER "com.zuler.todesk.licode"
    XCODE_ATTRIBUTE_CODE_SIGN_STYLE "Automatic"
    XCODE_ATTRIBUTE_SKIP_INSTALL "YES"
)