//
//  IdleSleep_qspluginAction.m
//  IdleSleep-qsplugin
//
//  Created by Wei on 2/3/13.
//

#import "IdleSleep_qspluginAction.h"

@implementation QSIdleSleep_qspluginActionProvider

- (QSObject *)disableIdleSleep
{
    NSLog(@"disableIdleSleep");
	IOReturn success = IOPMAssertionCreateWithName(kIOPMAssertionTypeNoIdleSleep,
												   kIOPMAssertionLevelOn,
                                                   CFSTR("Quicksilver IdleSleep plugin"),
                                                   &assertionID);
	if (success != kIOReturnSuccess) {
        NSLog(@"IOPMAssertionCreateWithName failed");
    }

    return nil;
}

- (QSAction *)enableIdleSleep
{
    NSLog(@"enableIdleSleep");
	IOReturn success = IOPMAssertionRelease(assertionID);
	if (success != kIOReturnSuccess) {
        NSLog(@"IOPMAssertionRelease failed");
    }

    return nil;
}

@end
