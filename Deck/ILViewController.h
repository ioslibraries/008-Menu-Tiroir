//
//  ILViewController.h
//  Deck
//
//  Created by jeremy Templier on 05/04/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ILViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *mImageView;
- (IBAction)menuPressed:(id)sender;
- (IBAction)infosPressed:(id)sender;
@end
