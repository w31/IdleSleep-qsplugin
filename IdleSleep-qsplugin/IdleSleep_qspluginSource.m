//
//  IdleSleep_qspluginSource.m
//  IdleSleep-qsplugin
//
//  Created by Wei on 2/3/13.
//

#import "IdleSleep_qspluginSource.h"

@implementation QSIdleSleep_qspluginSource

- (BOOL)indexIsValidFromDate:(NSDate *)indexDate forEntry:(NSDictionary *)theEntry
{
	return NO;
}

- (NSImage *)iconForEntry:(NSDictionary *)dict
{
	return nil;
}

// Return a unique identifier for an object (if you haven't assigned one before)
//- (NSString *)identifierForObject:(id <QSObject>)object
//{
//	return nil;
//}

- (NSArray *) objectsForEntry:(NSDictionary *)theEntry
{
	NSMutableArray *objects=[NSMutableArray arrayWithCapacity:1];
	QSObject *newObject;
	
	newObject=[QSObject objectWithName:@"Idle Sleep"];
	[newObject setObject:@"Virtual Idle Sleep Object" forType:QSIdleSleep_qspluginType];
	[newObject setPrimaryType:QSIdleSleep_qspluginType];
    [newObject setDetails:@"Put computer to sleep when idle"];
    [newObject setIdentifier:@"IdleSleep"];
    [newObject setLabel:@"Idle Sleep"];
    [newObject setName:@"IdleSleep Object"];
	[objects addObject:newObject];
	
	return objects;
}

// Object Handler Methods


- (void)setQuickIconForObject:(QSObject *)object
{
	[object setIcon:[QSResourceManager imageNamed:@"IdleSleepIcon"]];
}
/*
- (BOOL)loadIconForObject:(QSObject *)object
{
	return NO;
	id data=[object objectForType:QSIdleSleep_qspluginType];
	[object setIcon:nil];
	return YES;
}
*/
@end
