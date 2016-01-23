//
//  ViewController.m
//  FingerPainting
//
//  Created by Anthony Tulai on 2016-01-22.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController ()

@property (strong) DrawView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.drawView = [[DrawView alloc]initWithFrame:self.view.bounds];
    self.drawView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.drawView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
