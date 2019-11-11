//
//  ViewController.m
//  MovingBox
//
//  Created by Rodney Sampson on 8/30/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIView * greenView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint * greenViewTopVonstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor blackColor];
    
    CGFloat currentConstant = self.greenViewTopVonstraint.constant;
    CGFloat targetConstant = currentConstant + self.view.frame.size.height;
    
    [UIView animateWithDuration:5 animations:^{
        self.greenViewTopVonstraint.constant = targetConstant;
        self.greenView.alpha = 0;
        [self.view layoutSubviews];
    } completion:^(BOOL finished){
        if (finished) {
            NSLog(@"All done");
        } else {
            NSLog(@"Whoa!");
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
