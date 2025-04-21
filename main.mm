#import <Cocoa/Cocoa.h>
#import "HelloFramework.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        [NSApplication sharedApplication];

        NSRect frame = NSMakeRect(0, 0, 300, 120);
        NSUInteger style = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable;
        NSWindow *window = [[NSWindow alloc] initWithContentRect:frame
                                                       styleMask:style
                                                         backing:NSBackingStoreBuffered
                                                           defer:NO];
        [window setTitle:@"Hello World"];
        [window center];

        NSString *msg = [HelloFramework helloString];
        NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(50, 50, 200, 24)];
        [label setStringValue:msg];
        [label setBezeled:NO];
        [label setDrawsBackground:NO];
        [label setEditable:NO];
        [label setSelectable:NO];
        [[window contentView] addSubview:label];

        [window makeKeyAndOrderFront:nil];
        [NSApp run];
    }
    return 0;
}