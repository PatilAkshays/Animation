//
//  ViewController.h
//  APAnimation
//
//  Created by Mac on 14/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    CGFloat heightOfScreen;
    CGFloat widthOfScreen;
}
@property (strong, nonatomic) IBOutlet UIImageView *ball;

- (IBAction)zoomInAction:(id)sender;


- (IBAction)actionDirection:(id)sender;


- (IBAction)zoomOutAction:(id)sender;
@end

