//
//  Alarm.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddMedicationsTableViewController.h"

@interface Alarm : NSObject

-(void)setNotification:(UIDatePicker *)datePicker withFrequency:(NSCalendarUnit) interval;
//    withMedicationName:(UITextField *)medication withMedicationDose:(UITextField *)dose;

@end
