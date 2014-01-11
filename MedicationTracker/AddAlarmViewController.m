//
//  AddAlarmViewController.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "AddAlarmViewController.h"

@interface AddAlarmViewController ()

@end

@implementation AddAlarmViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dateTimePicker.date = [NSDate date];
    NSLog(@"%@",_dateTimePicker.date);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alarmSetButtonTapped:(id)sender {
    NSLog(@"alarm set button tapped");
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.locale = [NSLocale systemLocale];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    NSString *dateTimeString = [dateFormatter stringFromDate: self.dateTimePicker.date];
    
    NSLog(@"%@",dateTimeString);
    
    [self scheduleLocalNotificationWithDate:self.dateTimePicker.date];
    
   
    
}

- (void)scheduleLocalNotificationWithDate:(NSDate *)fireDate{
    UILocalNotification *notification = [[UILocalNotification alloc]init];
    notification.fireDate = fireDate;
    notification.alertBody = @"Alarm";
    // notification.soundName = "Insert Sound File"
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}


- (IBAction)alarmCancelButtonTapped:(id)sender {
    NSLog (@"Alarm cancel button tapped");
}
@end
