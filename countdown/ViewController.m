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
    // NOTE FOR DEVELOPER:
    // NSDateFormatter is your best friend. It converts text (ie. NSString)
    // into an NSDate. That way you don't have to deal with a billion seconds
    // an all sorts of other crap.
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    destinationDate = [dateFormatter dateFromString:@"04-10-2015"];
    
    //destinationDate = [NSDate dateWithTimeIntervalSince1970:1428674400];
    
    // NOTE FOR DEVELOPER:
    // I'm just gonna say, [NSDate dateWithTimeIntervalSince1970] is
    // a horrible way to do things, no offense. What tutorial are you using? :P
    
    /******** 2 ********/
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
    
}

/******** 1 ********/
-(void)updateLabel {
    
    /******** 2 ********/
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    /******** 3 ********/
    int units = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
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
