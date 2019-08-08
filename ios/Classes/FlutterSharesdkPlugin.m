#import "FlutterSharesdkPlugin.h"
#import <flutter_sharesdk/flutter_sharesdk-Swift.h>
#import <ShareSDK/ShareSDK.h>
@implementation FlutterSharesdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSharesdkPlugin registerWithRegistrar:registrar];
//    FlutterMethodChannel* channel = [FlutterMethodChannel
//                                     methodChannelWithName:@"com.yoozoo.mob/sharesdk"
//                                     binaryMessenger:[registrar messenger]];
//    FlutterSharesdkPlugin* instance = [[FlutterSharesdkPlugin alloc] init];
//    [registrar addMethodCallDelegate:instance channel:channel];
    [ShareSDK getUserInfo:SSDKPlatformTypeTwitter onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error) {
        
    }];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result{
    
    NSLog(@"1111%@",call.method);
}

@end
