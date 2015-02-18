//
//  ViewController.m
//  JLNRGravityImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke. All rights reserved.
//

#import "ViewController.h"
#import "../JLNRGravityImageView.h"


@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet JLNRGravityImageView *imageView;

@end


@implementation ViewController

#pragma mark - UIViewController

- (void)viewDidLayoutSubviews
{
    CGSize scrollViewSize = self.scrollView.frame.size;
    self.scrollView.contentSize = CGSizeMake(scrollViewSize.width * 1.7, scrollViewSize.height * 1.7);
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint offset = self.scrollView.contentOffset;
    CGSize scrollViewSize = self.scrollView.frame.size;
    self.imageView.frame = CGRectMake(offset.x, offset.y, scrollViewSize.width - offset.x, scrollViewSize.height - offset.y);
}

#pragma mark - IBActions

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

@end
