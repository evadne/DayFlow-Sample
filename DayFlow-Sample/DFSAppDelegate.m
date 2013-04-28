#import "DFSAppDelegate.h"
#import <DayFlow/DFDatePickerView.h>
#import <DayFlow/DFDatePickerViewController.h>

@interface DFSAppDelegate () <DFDatePickerViewControllerDelegate>
@end

@implementation DFSAppDelegate

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	DFDatePickerViewController *picker = [DFDatePickerViewController new];
	picker.delegate = self;
	self.window.rootViewController = picker;
	[self.window makeKeyAndVisible];
	return YES;
}

- (void) datePickerViewController:(DFDatePickerViewController *)controller didSelectDate:(NSDate *)date {

	[[[UIAlertView alloc] initWithTitle:@"Picked Date" message:[date description] delegate:nil cancelButtonTitle:@":D" otherButtonTitles:nil] show];
	
	//	If you set it to something not nil, we’ll call you again
	//	so don’t.
	
	controller.datePickerView.selectedDate = nil;

}

@end
