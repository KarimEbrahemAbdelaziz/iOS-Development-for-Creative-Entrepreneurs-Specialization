//
//  ViewController.m
//  Conditionals
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

- (IBAction)tellMeMyHeight:(id)sender {
    
    int height_feet = 5;
    int height_inches = 11;
    double height_cm = ((height_feet * 12.0) + height_inches) * 2.54;
    
    if(height_cm > 200.0) {
        self.heightLabel.text = @"You are over 2 meters tall";
    } else if (height_cm > 100.0){
        self.heightLabel.text = @"You are over 1 meters tall";
    } else {
        self.heightLabel.text = @"You are under 1 meters tall";
    }
    
    /*
    if(0) { // False
        self.heightLabel.text = @" 0 is true";
    } else if (2){ // True
        self.heightLabel.text = @" 2 is true";
    } else {
        self.heightLabel.text = @"nither 0 or 2 is true";
    }
     */
    
    /*
    if( 0 && 1) {
        // Do something
    } else if( 0 || 2) {
        
    } else if( !1 ) {
        
    }
     */
    
}

@end
