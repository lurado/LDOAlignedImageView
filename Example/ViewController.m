//
//  ViewController.m
//  JLNRGravityImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke. All rights reserved.
//

#import "ViewController.h"
#import "../JLNRGravityImageView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet JLNRGravityImageView *imageView;

@end


@implementation ViewController

- (IBAction)changeHorizontalAlignment:(UISegmentedControl *)segmentedControl
{
    self.imageView.alignLeft = (segmentedControl.selectedSegmentIndex == 0);
    self.imageView.alignRight = (segmentedControl.selectedSegmentIndex == 2);
}

- (IBAction)changeVerticalAlignment:(UISegmentedControl *)segmentedControl
{
    self.imageView.alignTop = (segmentedControl.selectedSegmentIndex == 0);
    self.imageView.alignBottom = (segmentedControl.selectedSegmentIndex == 2);
}

- (IBAction)sliderValueDidChange:(UISlider *)slider
{
    CGRect imageFrame = self.imageView.frame;
    imageFrame.size.width = slider.frame.size.width * slider.value;
    self.imageView.frame = imageFrame;
}

@end
