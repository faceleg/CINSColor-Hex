//
//  CINSColor_HexAppDelegate.m
//  CINSColor+Hex
//
//  Created by Michael Robinson on 4/12/11.
//  Copyright 2011 ECPod. All rights reserved.
//

#import "CINSColor_HexAppDelegate.h"
#import "NSColor+Hex.h"


@implementation CINSColor_HexAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification { }

- (void) controlTextDidChange:(NSNotification *)obj {
    @try {
        NSColor *color = [NSColor colorWithHex:[[obj object] stringValue]];
        if (color) [colorWell setColor:color];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", [exception description]);
    }
}

- (IBAction) colorPickerChanged:(id)sender {
    [hexColorInput setStringValue:[[[sender color] hexColor] stringByReplacingOccurrencesOfString:@"#" withString:@""]];
}

@end
