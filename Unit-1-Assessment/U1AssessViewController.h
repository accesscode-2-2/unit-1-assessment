//
//  U1AssessViewController.h
//  Unit-1-Assessment
//
//  Created by Eric Sanchez on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface U1AssessViewController : UIViewController
@property (nonatomic) NSInteger upDown;
@property (weak, nonatomic) IBOutlet UILabel *plusMinusLabel;

@end
