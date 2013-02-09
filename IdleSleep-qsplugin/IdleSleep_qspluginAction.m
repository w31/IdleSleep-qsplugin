//
//  IdleSleep_qspluginAction.m
//  IdleSleep-qsplugin
//
//  Created by Wei on 2/3/13.
//

#import "IdleSleep_qspluginAction.h"
#import "IdleSleep_qspluginSource.h"

@implementation QSIdleSleep_qspluginActionProvider

- (QSObject *)disableIdleSleep
{
    NSLog(@"disableIdleSleep");
	IOReturn success = IOPMAssertionCreateWithName(kIOPMAssertionTypeNoIdleSleep,
												   kIOPMAssertionLevelOn,
                                                   CFSTR("Quicksilver Idle Sleep plugin"),
                                                   &assertionID);
	if (success != kIOReturnSuccess) {
        NSLog(@"IOPMAssertionCreateWithName failed");
    }

    idleSleepDisabled = YES;

    return nil;
}

- (QSAction *)enableIdleSleep
{
    NSLog(@"enableIdleSleep");
	IOReturn success = IOPMAssertionRelease(assertionID);
	if (success != kIOReturnSuccess) {
        NSLog(@"IOPMAssertionRelease failed");
    }

    idleSleepDisabled = NO;

    return nil;
}

- (NSArray *)validActionsForDirectObject:(QSObject *)dObject indirectObject:(QSObject *)iObject
{
    if ([dObject containsType:QSIdleSleep_qspluginType]) {
        NSMutableArray *actions = [[NSMutableArray alloc] init];
        if (idleSleepDisabled) {
            [actions addObject:@"IdleSleepEnable"];
        }
        else {
            [actions addObject:@"IdleSleepDisable"];
        }
        return actions;
    }
    return nil;
}

- (void)dealloc
{
    if (idleSleepDisabled) {
        NSLog(@"Calling enableIdleSleep via dealloc");
        [self enableIdleSleep];
    }

    [super dealloc];
}

@end
