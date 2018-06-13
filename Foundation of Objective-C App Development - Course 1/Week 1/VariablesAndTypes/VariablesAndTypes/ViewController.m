//
//  ViewController.m
//  VariablesAndTypes
//
//  Created by Graphic on 6/13/18.
//  Copyright © 2018 Kraim Ebrahem Corporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *heightLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateHeight:(id)sender {
    int height_feet = 5;
    int height_inches = 11;
    double height_cm = (((height_feet * 12.0) + height_inches) * 2.54);
    
    self.heightLabel.text = [NSString stringWithFormat: @"%f", height_cm];
}

@end
