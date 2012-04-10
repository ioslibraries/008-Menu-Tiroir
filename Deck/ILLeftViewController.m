//
//  ILLeftViewController.m
//  Deck
//
//  Created by jeremy Templier on 05/04/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import "ILLeftViewController.h"
#import "IIViewDeckController.h"
#import "ILViewController.h"

@interface ILLeftViewController ()

@end

@implementation ILLeftViewController

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
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Pomme";
            break;
        case 1:
            cell.textLabel.text = @"Poire";
            break;
        case 2:
            cell.textLabel.text = @"Fraise";
            break;
            
        default:
            break;
    }
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* imageName ;
    switch (indexPath.row) {
        case 0:
            imageName = @"pomme.jpg";
            break;
        case 1:
            imageName = @"poire.jpg";
            break;
        case 2:
            imageName = @"fraise.jpg";
            break;
            
        default:
            NSLog(@"Oups");
            break;
    }
    UIImage* image = [UIImage imageNamed:imageName];
    ILViewController *vc = (ILViewController*)self.viewDeckController.centerController;
    [vc.mImageView setImage:image];
    [self.viewDeckController toggleLeftView];
}

@end
