#import "InfoCarouselPlugin.h"
#if __has_include(<info_carousel/info_carousel-Swift.h>)
#import <info_carousel/info_carousel-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "info_carousel-Swift.h"
#endif

@implementation InfoCarouselPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftInfoCarouselPlugin registerWithRegistrar:registrar];
}
@end
