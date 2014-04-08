//
//  ViewController.m
//  HelloWorld
//
//  Created by Emma Ström on 2014-04-08.
//  Copyright (c) 2014 Emma Ström. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self Main];
    //skriv kod här!
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)Main{
    NSLog(@"HEEJ LINA!!!");
    [jsonData setJSON]
}
- (IBAction)button2:(id)sender {
    NSLog(@"YOU PRESSED THE BUTTON!");
    self.label.text = @"YOU PRESSED THE BUTTON!";
}

@end
