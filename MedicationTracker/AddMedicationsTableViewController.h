//
//  AddMedicationsTableViewController.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MedicationsListTableViewController;

@interface AddMedicationsTableViewController : UITableViewController

- (IBAction)cancelButtonPressed:(id)sender;

- (IBAction)doneButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *nameField;

@property (strong, nonatomic) IBOutlet UITextField *dosageField;

@property (strong, nonatomic) MedicationsListTableViewController * medicationsListTableViewController;




@end
