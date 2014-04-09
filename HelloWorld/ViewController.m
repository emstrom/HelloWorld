//
//  ViewController.m
//  HelloWorld
//
//  Created by Emma Ström on 2014-04-08.
//  Copyright (c) 2014 Emma Ström. All rights reserved.
//

#import "ViewController.h"
@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];

    [self Main];
    //skriv kod här!
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//--------- MAIN -----------

-(void)Main{
    NSLog(@"HEEJ LINA!!!");
    [jsonData setJSON];
    array = [jsonData GetArray];
    // NSLog(@"%@", array[0]); skriv ut allting som finns
}
- (NSInteger)getRandomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max{
    return min + arc4random() % (max - min + 1);
}



- (IBAction)button2:(id)sender {
    int i = [self getRandomNumberBetween:0 maxNumber:[array count]-1];
    self.label.text = [array[i] objectForKey:@"Artikelnamn"];
}

- (IBAction)contact:(id)sender {
    NSString *recipients = @"mailto:beerdev@gmail.com?cc=second@example.com&subject=BeerDev Application";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:recipients]];
}

@end
