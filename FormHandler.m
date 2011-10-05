#import "FormHandler.h"

@implementation FormHandler

- (IBAction)perform_request:(id)sender
{
	
	NSString *return_string;
	NSURL *fetch_url;
	NSMutableURLRequest *ur;
	NSData *body;
	
	int max = [repeat intValue];
	
	fetch_url  = [NSURL URLWithString: [url_name stringValue]];
	ur = [NSMutableURLRequest requestWithURL:fetch_url];
	body = [[post_fields stringValue] dataUsingEncoding: NSASCIIStringEncoding];
	
	if( [ body length ] > 0)
	{
		[ur setHTTPBody: body];
		[ur setHTTPMethod: @"POST"];
	}
	
	NSURLResponse *response = [NSURLResponse init];
	NSError *err = [NSError init];

	NSData *return_data = [NSURLConnection	sendSynchronousRequest:ur 
											returningResponse:&response 
											error:&err ];
							
	return_string = [[NSString alloc] initWithData:return_data
					encoding:NSASCIIStringEncoding	];
	
	[result setString: return_string];

}

@end
