//
//  JLNRGravityImageView.m
//  JLNRGravityImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke. All rights reserved.
//

#import "JLNRGravityImageView.h"


@implementation JLNRGravityImageView

#pragma mark - Custom setters

- (void)setAlignTop:(BOOL)alignTop
{
    _alignTop = alignTop;
    
    [self calculateContentsRect];
}

- (void)setAlignBottom:(BOOL)alignBottom
{
    _alignBottom = alignBottom;
    
    [self calculateContentsRect];
}

- (void)setAlignLeft:(BOOL)alignLeft
{
    _alignLeft = alignLeft;
    
    [self calculateContentsRect];
}

- (void)setAlignRight:(BOOL)alignRight
{
    _alignRight = alignRight;
    
    [self calculateContentsRect];
}

#pragma mark - UIView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self calculateContentsRect];
}

- (void)setContentMode:(UIViewContentMode)contentMode
{
    [super setContentMode:contentMode];
    
    [self calculateContentsRect];
}

- (void)calculateContentsRect
{
    CGRect contentsRect = CGRectMake(0, 0, 1, 1);

    if (self.contentMode != UIViewContentModeScaleAspectFill || self.image == nil) {
        self.layer.contentsRect = contentsRect;
        return;
    }
    
    CGSize imageSize = self.image.size;
    CGSize frameSize = self.frame.size;
    CGFloat scaleFactor = MAX(frameSize.width / imageSize.width, frameSize.height / imageSize.height);
    CGSize scaledImageSize = CGSizeMake(imageSize.width * scaleFactor, imageSize.height * scaleFactor);
    
    if (self.alignTop && self.alignBottom) {
        // Do nothing if both flags are set, i.e. keep the image centred
    }
    else if (self.alignTop || self.alignBottom) {
        contentsRect.size.height = 2 - frameSize.height / scaledImageSize.height;
        if (self.alignTop) {
            contentsRect.origin.y = 1 - contentsRect.size.height;
        }
    }
    
    if (self.alignLeft && self.alignRight) {
        // Do nothing if both flags are set, i.e. keep the image centred
    }
    else if (self.alignLeft || self.alignRight) {
        contentsRect.size.width = 2 - frameSize.width / scaledImageSize.width;
        if (self.alignLeft) {
            contentsRect.origin.x = 1 - contentsRect.size.width;
        }
    }
    
    self.layer.contentsRect = contentsRect;
}

@end
