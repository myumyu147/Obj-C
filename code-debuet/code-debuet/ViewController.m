//
//  ViewController.m
//  code-debuet
//
//  Created by kamado on 12/06/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize labelText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLabelText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)buttonPush:(id)sender {
  // self.labelText.text = @"You Pushed Me!";
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  NSDate *now = [NSDate date];
  [formatter setDateFormat:@"HH:mm:ss"];
  self.labelText.text = [formatter stringFromDate:now];
}
@end
