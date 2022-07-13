//
//  PrefDelegate.m
//  filer-cocoa
//
//  Created by Ash on 12/31/21.
//

#import <Foundation/Foundation.h>
#import "PrefDelegate.h"

@interface PrefDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation PrefDelegate

- (IBAction)switchToGeneral:(id)sender {
    NSClipView *clip = [NSClipView new];
    [clip setDocumentView:_generalView];
    [_scrollView setContentView:clip];
    [_scrollView setAutohidesScrollers:YES];
    [[_scrollView documentView] scrollPoint:
        NSMakePoint(0,[_generalView bounds].size.height)];
}

- (IBAction)switchToAppearance:(id)sender {
    NSClipView *clip = [NSClipView new];
    [clip setDocumentView:_appearanceView];
    [_scrollView setContentView:clip];
    [_scrollView setAutohidesScrollers:YES];
    [[_scrollView documentView] scrollPoint:
        NSMakePoint(0,[_appearanceView bounds].size.height)];
}

- (IBAction)switchToTags:(id)sender {
    NSClipView *clip = [NSClipView new];
    [clip setDocumentView:_tagsView];
    [_scrollView setContentView:clip];
    [_scrollView setAutohidesScrollers:YES];
    [[_scrollView documentView] scrollPoint:
        NSMakePoint(0,[_tagsView bounds].size.height)];
}

- (IBAction)switchToAdvanced:(id)sender {
    NSClipView *clip = [NSClipView new];
    [clip setDocumentView:_advancedView];
    [_scrollView setContentView:clip];
    [_scrollView setAutohidesScrollers:YES];
    [[_scrollView documentView] scrollPoint:
        NSMakePoint(0,[_advancedView bounds].size.height)];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSClipView *clip = [NSClipView new];
    [clip setDocumentView:_generalView];
    [_scrollView setContentView:clip];
    [_scrollView setAutohidesScrollers:YES];
    [[_scrollView documentView] scrollPoint:
        NSMakePoint(0,[_generalView bounds].size.height)];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
