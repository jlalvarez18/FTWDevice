//
//  SKAppDelegate.h
//  SKDevice
//
//  Created by Soroush Khanlou on 7/13/12.
//  Copyright (c) 2012 FTW. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FTWDevice.h"

@interface FTWAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *nameField;
@property (assign) IBOutlet NSTextField *localizedNameField;
@property (assign) IBOutlet NSTextField *systemNameField;
@property (assign) IBOutlet NSTextField *systemVersionField;
@property (assign) IBOutlet NSTextField *MACAddressField;
@property (assign) IBOutlet NSTextField *platformField;
@property (assign) IBOutlet NSTextField *hardwareModelField;
@property (assign) IBOutlet NSTextField *CPUFrequencyField;
@property (assign) IBOutlet NSTextField *busFrequencyField;
@property (assign) IBOutlet NSTextField *CPUCountField;
@property (assign) IBOutlet NSTextField *totalMemoryField;
@property (assign) IBOutlet NSTextField *userMemoryField;
@property (assign) IBOutlet NSTextField *totalDiskSpaceField;
@property (assign) IBOutlet NSTextField *freeDiskSpaceField;
@property (assign) IBOutlet NSTextField *serialNumberField;
@property (assign) IBOutlet NSTextField *isRetinaField;

@end
