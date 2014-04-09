//
//  ViewController.h
//  HelloWorld
//
//  Created by Emma Ström on 2014-04-08.
//  Copyright (c) 2014 Emma Ström. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "jsonData.h"
#import <MessageUI/MessageUI.h>


@interface ViewController : UIViewController {
    NSMutableArray * array;
}
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

