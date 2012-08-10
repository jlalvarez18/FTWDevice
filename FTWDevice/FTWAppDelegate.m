//
//  SKAppDelegate.m
//  SKDevice
//
//  Created by Soroush Khanlou on 7/13/12.
//  Copyright (c) 2012 FTW. All rights reserved.
//

#import "FTWAppDelegate.h"

@implementation FTWAppDelegate

@synthesize window, nameField, localizedNameField, systemVersionField,systemNameField, MACAddressField, platformField, hardwareModelField, CPUCountField, CPUFrequencyField, busFrequencyField, totalMemoryField, userMemoryField, totalDiskSpaceField, freeDiskSpaceField, serialNumberField, isRetinaField;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (void) awakeFromNib {
	
	self.window.minSize = self.window.frame.size;
	
	FTWDevice *currentDevice = [FTWDevice currentDevice];
	nameField.stringValue = [currentDevice name];
	localizedNameField.stringValue = [currentDevice localizedName];
	systemNameField.stringValue = [currentDevice systemName];
	systemVersionField.stringValue = [currentDevice systemVersion];
	MACAddressField.stringValue = [currentDevice MACAddress];
	platformField.stringValue = [currentDevice platform];
	hardwareModelField.stringValue = [currentDevice hardwareModel];
	
	NSUInteger CPUFrequency = [currentDevice CPUFrequency];
	CPUFrequencyField.stringValue = [NSString stringWithFormat:@"%0.2f Ghz",
							   (CPUFrequency/1024/1024)/((float)1024)];
	
	CPUCountField.stringValue = [NSString stringWithFormat:@"%lu",[currentDevice CPUCount]];
	busFrequencyField.stringValue = [NSString stringWithFormat:@"%lu",[currentDevice busFrequency]];
	totalMemoryField.stringValue = [NSString stringWithFormat:@"%lu",[currentDevice totalMemory]];
	userMemoryField.stringValue = [NSString stringWithFormat:@"%lu",[currentDevice userMemory]];
	totalDiskSpaceField.stringValue = [NSString stringWithFormat:@"%@",[currentDevice totalDiskSpace]];
	freeDiskSpaceField.stringValue = [NSString stringWithFormat:@"%@",[currentDevice freeDiskSpace]];
	serialNumberField.stringValue = [currentDevice serialNumber];
	isRetinaField.stringValue = ([currentDevice isRetina] ? @"Yes" : @"No");
}

@end
