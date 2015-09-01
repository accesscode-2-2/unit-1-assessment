//
//  C4QStudentDetailViewController.h
//  Unit-1-Assessment
//
//  Created by Jovanny Espinal on 8/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "C4Q.h"

@interface C4QStudentDetailViewController : UIViewController

@property (nonatomic) C4Q *student;
@property (weak, nonatomic) IBOutlet UIImageView *studentImageView;


@end
