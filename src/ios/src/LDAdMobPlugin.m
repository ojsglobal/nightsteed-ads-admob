#import "LDAdMobPlugin.h"
#import "LDAdServiceAdMob.h"

@implementation LDAdMobPlugin

- (void)pluginInitialize
{
    [super pluginInitialize];
    
    LDAdServiceAdMob * admob = [[LDAdServiceAdMob alloc] init];
    admob.settings.banner = [self.commandDelegate.settings objectForKey:@"admob_banner"];
    admob.settings.bannerIpad = [self.commandDelegate.settings objectForKey:@"admob_bannerIpad"] ?: admob.settings.banner;
    admob.settings.interstitial = [self.commandDelegate.settings objectForKey:@"admob_interstitial"];
    admob.settings.interstitialIpad = [self.commandDelegate.settings objectForKey:@"admob_interstitialIpad"] ?: admob.settings.interstitial;
    admob.settings.rewardedVideo = [self.commandDelegate.settings objectForKey:@"admob_rewardedVideo"];
    admob.settings.rewardedVideoIpad = [self.commandDelegate.settings objectForKey:@"admob_rewardedVideoIpad"] ?: admob.settings.rewardedVideo;

    self.service = admob;
}

@end
