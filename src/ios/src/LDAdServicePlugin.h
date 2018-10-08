#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import "LDAdService.h"

@interface LDAdServicePlugin : CDVPlugin<LDAdBannerDelegate, LDAdInterstitialDelegate, LDAdRewardedVideoDelegate>
@property (nonatomic, strong) LDAdService * service;

-(void) configure:(CDVInvokedUrlCommand*) command;
-(void) setConsent:(CDVInvokedUrlCommand*) command;

@end


typedef NS_ENUM(NSInteger, LDAdBannerLayout) {
    LDBannerLayoutTopCenter = 0,
    LDBannerLayoutBottomCenter = 1,
    LDBannerLayoutCustom = 2,
};

@interface LDAdBannerData : NSObject
@property (nonatomic, strong) LDAdBanner * banner;
@property (nonatomic, assign) CGPoint customPosition;
@property (nonatomic, assign) LDAdBannerLayout layout;
@end