//
//  ViewController.h
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate> {
    
}

@property (strong, nonatomic) IBOutlet UILabel *numerLabel;

@property  NSInteger numberValue;

@property (strong, nonatomic) NSTimer* delayPushTimer;

@property (strong, nonatomic) NSString* timerText;
@end

