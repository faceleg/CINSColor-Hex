//
//  CINSColor_HexAppDelegate.h
//  CINSColor+Hex
//
//  Created by Michael Robinson on 4/12/11.
//  Copyright 2011 ECPod. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CINSColor_HexAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSColorWell *colorWell;
    IBOutlet NSTextField *hexColorInput;
}

@property (assign) IBOutlet NSWindow *window;

- (void) controlTextDidChange:(NSNotification *)obj;

- (IBAction) colorPickerChanged:(id)sender;

@end
