//
//  MedicationsListTableViewController.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "MedicationsListTableViewController.h"
#import "Medications.h"
#import "AddMedicationsTableViewController.h"
#import "EditMedicationsTableViewController.h"


@interface MedicationsListTableViewController ()

@end

@implementation MedicationsListTableViewController

@synthesize medications = _medications;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.medications = [[NSMutableArray alloc]init];
}
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"AddMedicationSegue" ]){
        UINavigationController *navCon = segue.destinationViewController;
        AddMedicationsTableViewController *addMedicationsTableViewController = [navCon.viewControllers objectAtIndex:0];
        addMedicationsTableViewController.medicationsListTableViewController = self;
    }else if ([segue.identifier isEqualToString:@"EditAlarmOnTaskSegue"] || [segue.identifier isEqualToString:@"EditAlarmOffTaskSegue"]){
        EditMedicationsTableViewController *editMedicationsTableViewController = segue.destinationViewController;
        editMedicationsTableViewController.medication = [self.medications objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    }

    }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.medications.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *AlarmOnCellIdentifier = @"AlarmOnCell";
    static NSString *AlarmOffCellIdentifier = @"AlarmOffCell";
    
    Medications *currentMedication = [self.medications objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = currentMedication.alarmed ? AlarmOnCellIdentifier : AlarmOffCellIdentifier;
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = currentMedication.name;
    cell.detailTextLabel.text = currentMedication.alarmTime;
    #warning Add alarm time here to cell subtitle
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */


 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
     [self.medications removeObjectAtIndex:indexPath.row];
     [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }



 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
     Medications *movedMedications = [self.medications objectAtIndex:fromIndexPath.row];
     [self.medications removeObjectAtIndex: fromIndexPath.row];
     [self.medications insertObject:movedMedications atIndex: toIndexPath.row];
     
     
 }



 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }


/*
 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */

#pragma mark – IBActions
- (IBAction)editButtonPressed:(id)sender {
    self.editing = !self.editing;
}
@end
