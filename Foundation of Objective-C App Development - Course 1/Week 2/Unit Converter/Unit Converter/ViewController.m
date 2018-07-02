//
//  ViewController.m
//  Unit Converter
//
//  Created by Ahmed Shehata on 7/2/18.
//  Copyright © 2018 Karim Ebrahem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valueToConvert;
@property (weak, nonatomic) IBOutlet UISegmentedControl *convertTo;
@property (weak, nonatomic) IBOutlet UILabel *convertResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculate:(UIButton *)sender {
    if (_convertTo.selectedSegmentIndex == 0) {
        
        double valueToConvert = [self getValueToConvert];
        double result = [self convertKilogramToGram: valueToConvert];
        self.convertResult.text = [NSString stringWithFormat: @"%f Gram", result];
        
    } else if (_convertTo.selectedSegmentIndex == 1) {
        
        double valueToConvert = [self getValueToConvert];
        double result = [self convertKilogramToMilligram: valueToConvert];
        self.convertResult.text = [NSString stringWithFormat: @"%f Milligram", result];
        
    } else {
        
        double valueToConvert = [self getValueToConvert];
        double result = [self convertKilogramToMicrogram: valueToConvert];
        self.convertResult.text = [NSString stringWithFormat: @"%f Microgram", result];
        
    }
}

- (double)getValueToConvert {
    return [self.valueToConvert.text doubleValue];
}

- (double)convertKilogramToGram:(double) valueToConvert {
    return valueToConvert * 1000.0;
}

- (double)convertKilogramToMilligram:(double) valueToConvert {
    return [self convertKilogramToGram: valueToConvert] * 1000.0;
}

- (double)convertKilogramToMicrogram:(double) valueToConvert {
    return [self convertKilogramToMilligram: valueToConvert] * 1000.0;
}

@end
