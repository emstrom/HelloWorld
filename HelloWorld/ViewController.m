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
@property (weak, nonatomic) IBOutlet UILabel *label;        //Definiera grejor
@property (weak, nonatomic) IBOutlet UILabel *pris;

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
    NSLog(@"Hej Emma!");
    
    [jsonData setJSON];                                           // Hämta data,clona
    array = [jsonData GetArray];                                                // Tilldela
    // NSLog(@"%@", array[0]); skriv ut allting som finns
}

- (NSInteger)getRandomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max{        // Random generator
    return min + arc4random() % (max - min + 1);
}

- (IBAction)button2:(id)sender {                                                 // Get Random Beer! knapp
    int i = [self getRandomNumberBetween:0 maxNumber:[array count]-1];              // def. intervall
    // def. Lable ändras till Artikelnamn
    self.label.text = [array[i] objectForKey:@"Artikelnamn"];
    // def. Price -> Pris, vid blandning av %d med %@ gör som nedan
    self.pris.text = [[NSString alloc] initWithFormat:@"%@ kr",[array[i] objectForKey:@"Utpris"]];
    
}






@end
