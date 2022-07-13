//
//  FilemanDelegate.m
//  filer-cocoa
//
//  Created by Ash on 5/4/22.
//

/*

#import <Foundation/Foundation.h>

@interface FilemanDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation FilemanDelegate

- (IBAction)readHomeTest:(id)sender {
    
    NSMutableArray *OBJarray = [[NSMutableArray alloc] init];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *path = [fileManager homeDirectoryForCurrentUser];
    NSArray *contents = [fileManager contentsOfDirectoryAtURL:path
                                   includingPropertiesForKeys:@[]
                                                      options:NSDirectoryEnumerationSkipsHiddenFiles
                                                        error:nil];
    NSImage *foldericn = [NSImage imageWithSystemSymbolName:@"NSFolder" accessibilityDescription:@"Folder"];
    
    // Set pathbar (don't know where else to do this)
    [_pathBar setURL:path];
    
    for (NSString *filePath in contents) {
        // Create our frame
        NSRect frameRect = NSMakeRect(0,0,302,20);
        // Spawn the icon
        NSTableCellView *filetextview = [[NSTableCellView alloc] initWithFrame:frameRect];
        // Spawn our elements inside the icon
        NSImageView *imageView = [[NSImageView alloc] initWithFrame:NSMakeRect(3,3,17,17)];
        filetextview.imageView = imageView;
        NSTextField *textField = [[NSTextField alloc] initWithFrame:NSMakeRect(25,3,277,17)];
        filetextview.textField = textField;
        // Set the image
        [filetextview.imageView setImage: foldericn];
        // Set the title
        //filetextview.textField.title = filePath;
        // Add the object to the array
    }
}

@end

*/
