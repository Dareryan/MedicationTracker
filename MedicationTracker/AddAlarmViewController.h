//
//  AddAlarmViewController.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditMedicationsTableViewController.h"

@interface AddAlarmViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *dateTimePicker;
- (IBAction)alarmSetButtonTapped:(id)sender;
- (IBAction)alarmCancelButtonTapped:(id)sender;
- (void) scheduleLocalNotificationWithDate: (NSDate *) fireDate;
@end
