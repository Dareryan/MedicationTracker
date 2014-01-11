//
//  Alarm.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "Alarm.h"

@implementation Alarm

//setting a notification
-(void)setNotification:(UIDatePicker *)datePicker withFrequency:(NSCalendarUnit) interval
{
    AddMedicationsTableViewController *view = [[AddMedicationsTableViewController alloc] init];
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [datePicker date];
    localNotification.repeatInterval = interval;

    localNotification.alertBody = [NSString stringWithFormat:@"Take %@ at dose %@", view.nameField.text, view.dosageField.text];
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
}


@end
