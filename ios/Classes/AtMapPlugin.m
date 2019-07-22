#import "AtMapPlugin.h"
#import "TestViewFactory.h"

@implementation AtMapPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"at_map"
            binaryMessenger:[registrar messenger]];
  AtMapPlugin* instance = [[AtMapPlugin alloc] init];
    
  [registrar addMethodCallDelegate:instance channel:channel];
    
  [registrar registerViewFactory:[[TestViewFactory alloc] initWithMessenger:registrar.messenger] withId:@"atmap.com.testview"];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
