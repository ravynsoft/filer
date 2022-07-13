/*
 Copyright (C) 2016 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 View Controller subclass used for our preview pane in NSBrowser.
 */

#import "PreviewViewController.h"
#import "FileSystemNode.h"

@implementation PreviewViewController

- (void)mouseDown:(NSEvent *)theEvent {
    
    [super mouseDown:theEvent];
    
    // check for double click
    if ([theEvent clickCount] > 1) {
        // Find the clicked item and open it in Finder
        FileSystemNode *node = self.representedObject;
        [[NSWorkspace sharedWorkspace] openFile:node.URL.path];
    }
}

@end
