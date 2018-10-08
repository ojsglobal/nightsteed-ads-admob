#import "NativeStorage.h"

@interface NativeStorage()
@property NSUserDefaults *appGroupUserDefaults;
@property NSString* suiteName;
@end

@implementation NativeStorage

- (void) initWithSuiteName: (NSString*)name
{
    NSString* aSuiteName = name;
    
    if(aSuiteName!=nil) {
        _suiteName = aSuiteName;
        _appGroupUserDefaults = [[NSUserDefaults alloc] initWithSuiteName:_suiteName];
    }
}

- (NSUserDefaults*) getUserDefault {
	if (_suiteName != nil)
	{
        return _appGroupUserDefaults;
	}
	return [NSUserDefaults standardUserDefaults];
}

- (void) putBoolean: (NSString*)key value:(BOOL)value {
	NSString* reference = key;
	BOOL aBoolean = value;

	if(reference!=nil)
	{
		NSUserDefaults *defaults = [self getUserDefault];
		[defaults setBool: aBoolean forKey:reference];
		BOOL success = [defaults synchronize];
	}
}
- (BOOL) getBoolean: (NSString*)key {
	NSString* reference = key;

	if(reference!=nil)
	{
		BOOL aBoolean = [[self getUserDefault] boolForKey:reference];
		return aBoolean;
	}
	return NO;
}


@end
