//
//  DetailViewController.h
//  Scary Bosses
//
//  Created by Daniel Wood on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//Here//
#import "RateView.h"

//Here//
@class ScaryBossDoc;

//Here//
@interface DetailViewController : UIViewController <UITextFieldDelegate, RateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//Here//
@property (strong, nonatomic) ScaryBossDoc *detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet RateView *rateView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImagePickerController * picker;

- (IBAction)addPictureTapped:(id)sender;
- (IBAction)titleFieldChanged:(id)sender;

@end
