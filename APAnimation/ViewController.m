//
//  ViewController.m
//  APAnimation
//
//  Created by Mac on 14/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     heightOfScreen = [[UIScreen mainScreen]bounds].size.height;
    
     widthOfScreen = [[UIScreen mainScreen]bounds].size.width;

    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
    
    self.ball.userInteractionEnabled = YES;
    
    [self.ball addGestureRecognizer:panGesture];
    
    
    
    
    
}

-(void)handlePan:(UIPanGestureRecognizer *)gesture{
    
    CGRect originalFrame;
    
    if([gesture isKindOfClass:[UIPanGestureRecognizer class]]){
        
        if (gesture.state == UIGestureRecognizerStateBegan) {
            NSLog(@"State begain");
            
            originalFrame = gesture.view.frame;
        }
        
        else if (gesture.state == UIGestureRecognizerStateChanged){
            
            CGPoint delta = [gesture locationInView:self.view];
            gesture.view.center = delta;
        }
        else if (gesture.state == UIGestureRecognizerStateEnded){
            
            
        }
        else{
            NSLog(@"pan Gesture Not Detected");
        }
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)zoomInAction:(id)sender {
   
    //[self animatZoomWithScale:.5];
    
    [self animateZoomWithSize:25];
}

- (IBAction)zoomOutAction:(id)sender {
    
    
    //[self animatZoomWithScale:1.5];

    [self animateZoomWithSize:-25];
}


- (IBAction)actionDirection:(id)sender {
    
    UIButton *button =sender ;
    
    if (button.tag == 100) {
        
        [self AnimationNortWestWithDuration:0.5 delay:0];

    }
    else if (button.tag == 101){
        
        [self AnimationUpWithDuration:0.5 delay:0];

    }
    else if (button.tag == 102){
        
        [self AnimationNortEastWithDuration:0.5 delay:0];

    }

    else if (button.tag == 103){
        
        [self AnimationLeftWithDuration:0.5 delay:0];

    }

    else if (button.tag == 104){
        
        [self AnimationRightWithDuration:0.5 delay:0];

    }

    else if (button.tag == 105){
        
        [self AnimationSouthWestWithDuration:0.5 delay:0];

    }

    else if (button.tag == 106){
        
        [self AnimationDownWithDuration:0.5 delay:0];
        
    }
    
    else if (button.tag == 107){
        
        [self AnimationSouthEastWithDuration:0.5 delay:0];

    }
}

-(void)AnimationUpWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        //if ((self.ball.frame.origin.y + 50)<heightOfScreen) {

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y - 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        //}
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];

}



-(void)AnimationDownWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
      //  if ((self.ball.frame.origin.y + 50)<heightOfScreen) {
        
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        
       // }
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Down Animation Finished");
        }
        
    }];
    
}
-(void)AnimationLeftWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
//        if ((self.ball.frame.origin.y + 50)< (self.view.frame.origin.y)) {

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 50, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
//        }
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}
-(void)AnimationRightWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
     //   if ((self.ball.frame.origin.y + 50)<widthOfScreen) {

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 50, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
      //  }
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}

-(void)AnimationNortWestWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
     //   if ((self.ball.frame.origin.x - 50) < widthOfScreen && (self.ball.frame.origin.y - 50) < heightOfScreen) {

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 50, self.ball.frame.origin.y - 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        
      //  }
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}
-(void)AnimationNortEastWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
     //   if ((self.ball.frame.origin.x + 50) < widthOfScreen && (self.ball.frame.origin.y - 50) < heightOfScreen) {
            

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 50, self.ball.frame.origin.y - 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        
      //  }
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}
-(void)AnimationSouthWestWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
     //   if ((self.ball.frame.origin.x - 50) < widthOfScreen && (self.ball.frame.origin.y + 50) < widthOfScreen) {
            

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 50, self.ball.frame.origin.y + 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        
     //   }
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}

-(void)AnimationSouthEastWithDuration:(NSTimeInterval)time delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
      //  if ((self.ball.frame.origin.x + 50) < widthOfScreen && (self.ball.frame.origin.y + 50) < heightOfScreen) {
            

        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 50, self.ball.frame.origin.y + 50, self.ball.frame.size.width, self.ball.frame.size.height)];
        
     //   }
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}



    
    




-(void)animatZoomWithScale:(CGFloat)scale {
    
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ball.transform = CGAffineTransformMakeScale(scale, scale);
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
    }];
    
    
}

-(void)animateZoomWithSize:(CGFloat)size {
    
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width + size, self.ball.frame.size.height + size)];
    } completion:^(BOOL finished) {
        
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
        
    }];
    
}
@end
