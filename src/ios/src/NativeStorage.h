#import <UIKit/UIKit.h>
@interface NativeStorage : NSObject

- (void) initWithSuiteName: (NSString*)name;
- (void) putBoolean: (NSString*)key value:(BOOL)value;
- (BOOL) getBoolean: (NSString*)key;


@end
