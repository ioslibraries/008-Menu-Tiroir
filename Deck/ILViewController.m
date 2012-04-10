//
//  ILViewController.m
//  Deck
//
//  Created by jeremy Templier on 05/04/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import "ILViewController.h"
#import "IIViewDeckController.h"

@interface ILViewController ()

@end

@implementation ILViewController
@synthesize mImageView;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setMImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)menuPressed:(id)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}

- (IBAction)infosPressed:(id)sender {
    //TODO
}
@end
