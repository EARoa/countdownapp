//
//  ViewController.m
//  countdown
//
//  Created by Efrain Ayllon on 3/27/15.
//  Copyright (c) 2015 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /******** 1 ********/
    destinationDate = [NSDate dateWithTimeIntervalSince1970:1428674400];
    
    /******** 2 ********/
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
    
}

/******** 1 ********/
-(void)updateLabel {
    
    /******** 2 ********/
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    /******** 3 ********/
    int units = NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    /******** 4 ********/
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date] toDate:destinationDate options:0];
    
    /******** 5 ********/
    [countdownLabel setText:[NSString stringWithFormat:@"%ld : %ld : %ld : %ld", (long)[components day],(long)[components hour],(long)[components minute], (long)[components second]]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
