//
//  ViewController.m
//  MissionPossible
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton * leftCounterButton;
@property (strong, nonatomic) IBOutlet UIButton * rightCounterButton;
@property (nonatomic) NSInteger leftCounterButtonValue;
@property (nonatomic) NSInteger rightCounterButtonValue;

- (IBAction)setLeftCounterButtonText:(UIButton *)sender;

- (IBAction)setRightCounterButtonText:(UIButton *)sender;

- (IBAction)resetCounterButtonValues:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.leftCounterButton setTitle:[NSString stringWithFormat:@"%@", @(0)] forState:UIControlStateNormal];
    [self.rightCounterButton setTitle:[NSString stringWithFormat:@"%@", @(0)] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)setLeftCounterButtonText:(UIButton *)sender {
    self.leftCounterButtonValue++;
    [self setCounterButtonText:sender newValue:self.leftCounterButtonValue];
}

- (IBAction)setRightCounterButtonText:(UIButton *)sender {
    self.rightCounterButtonValue++;
    [self setCounterButtonText:sender newValue:self.rightCounterButtonValue];
}

- (IBAction)setCounterButtonText:(UIButton *)button newValue:(NSInteger)newValue;  {
    [button setTitle:[NSString stringWithFormat:@"%@", @(newValue)] forState:UIControlStateNormal];
}

- (IBAction)resetCounterButtonValues:(UIButton *)sender {
    self.leftCounterButtonValue = 0;
    self.rightCounterButtonValue = 0;
    [self.leftCounterButton setTitle:@"0" forState:UIControlStateNormal];
    [self.rightCounterButton setTitle:@"0" forState:UIControlStateNormal];
}

@end
