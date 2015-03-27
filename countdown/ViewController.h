//
//  ViewController.h
//  countdown
//
//  Created by Efrain Ayllon on 3/27/15.
//  Copyright (c) 2015 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    /******** 1 ********/
    NSDate *destinationDate;
    
    /******** 2 ********/
    IBOutlet UILabel *countdownLabel;
    
    /******** 3 ********/
    NSTimer *timer;
    
}

/******** 4 ********/
-(void)updateLabel;

@end
