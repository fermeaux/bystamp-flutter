#import "BystampPlugin.h"
#if __has_include(<bystamp/bystamp-Swift.h>)
#import <bystamp/bystamp-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bystamp-Swift.h"
#endif

@implementation BystampPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBystampPlugin registerWithRegistrar:registrar];
}
@end
