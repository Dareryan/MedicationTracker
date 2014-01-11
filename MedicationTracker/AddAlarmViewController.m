//
//  AddAlarmViewController.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "AddAlarmViewController.h"

@interface AddAlarmViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *setAlarmDatePicker;
@property (weak, nonatomic) IBOutlet UISegmentedControl *frequencyControl;
@property (nonatomic) NSCalendarUnit interval;

@end

@implementation AddAlarmViewController


//set frequency 
- (IBAction)setFrequency:(id)sender {
    NSInteger index = [self.frequencyControl selectedSegmentIndex];
    switch (index) {
        case 0:
            self.interval = NSDayCalendarUnit;
            break;
        case 1:
            self.interval = NSWeekCalendarUnit;
            break;
        case 2:
            self.interval = NSMonthCalendarUnit;
            break;
    }
}

- (IBAction)setAlarmButtonPressed:(id)sender {
    Alarm *alarm = [[Alarm alloc] init];
    [alarm setNotification:self.setAlarmDatePicker withFrequency:self.interval];
}


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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
