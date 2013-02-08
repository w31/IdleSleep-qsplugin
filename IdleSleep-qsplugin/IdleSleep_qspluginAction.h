//
//  IdleSleep_qspluginAction.h
//  IdleSleep-qsplugin
//
//  Created by Wei on 2/3/13.
//

#import <IOKit/pwr_mgt/IOPMLib.h>

@interface QSIdleSleep_qspluginActionProvider : QSActionProvider
{
    BOOL idleSleepDisabled;
    IOPMAssertionID assertionID;
}
@end
