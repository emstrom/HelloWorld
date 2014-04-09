//
//  ViewController.m
//  HelloWorld
//
//  Created by Emma Ström on 2014-04-08.
//  Copyright (c) 2014 Emma Ström. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray * array;
}
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
    imageViews UserInteractionEnabled = YES;
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

- (IBAction)SwipeRight:(id)sender {
    NSLog(@"RIGHT");
    int i = [self getRandomNumberBetween:0 maxNumber:[array count]-1];
    self.label.text = [array[i] objectForKey:@"Artikelnamn"];
}
- (IBAction)SwipeLeft:(id)sender {
    NSLog(@"LEFT");
    int i = [self getRandomNumberBetween:0 maxNumber:[array count]-1];
    self.label.text = [array[i] objectForKey:@"Artikelnamn"];
}


- (IBAction)TAPTAP:(id)sender {
 NSLog(@"TAP");
}


@end
