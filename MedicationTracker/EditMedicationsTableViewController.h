//
//  EditMedicationsTableViewController.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Medications;

@interface EditMedicationsTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UISwitch *alarmSwitch;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *dosageField;
@property (strong, nonatomic) Medications *medication;
- (IBAction)nameDataChanged:(id)sender;
- (IBAction)dosageDataChanged:(id)sender;
- (IBAction)nameFieldKeyboardDismiss:(id)sender;
- (IBAction)dosageFieldKeyboardDismiss:(id)sender;



@end
