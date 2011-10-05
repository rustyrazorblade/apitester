/* FormHandler */

#import <Cocoa/Cocoa.h>

@interface FormHandler : NSObject
{
    IBOutlet NSTextField *post_fields;
    IBOutlet NSTextField *repeat;
    IBOutlet NSTextView *result;
    IBOutlet NSTextField *url_name;
}
- (IBAction)perform_request:(id)sender;
@end
