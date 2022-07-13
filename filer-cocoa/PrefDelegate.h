//
//  PrefDelegate.h
//  filer-cocoa
//
//  Created by Ash on 12/31/21.
//

#import <Cocoa/Cocoa.h>

@interface PrefDelegate : NSObject <NSApplicationDelegate>

// used to handle switching preference tabs
@property (strong) IBOutlet NSScrollView *scrollView;
@property (strong) IBOutlet NSScrollView *generalView;
@property (strong) IBOutlet NSScrollView *appearanceView;
@property (strong) IBOutlet NSScrollView *tagsView;
@property (strong) IBOutlet NSScrollView *advancedView;

// define actions for switching between preference tabs
- (IBAction)switchToGeneral:(id)sender;
- (IBAction)switchToAppearance:(id)sender;
- (IBAction)switchToTags:(id)sender;
- (IBAction)switchToAdvanced:(id)sender;

@end
