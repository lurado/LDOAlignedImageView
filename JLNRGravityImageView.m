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

- (void)setAlignLeft:(BOOL)alignRight
{
    _alignRight = alignRight;
    
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
    
    CGSize imageSize = self.image.size; // 1337x999
    CGSize frameSize = self.frame.size; // 288x381
    
    CGFloat scaleFactor = MAX(frameSize.width / imageSize.width, frameSize.height / imageSize.height); // MAX(0.215, 0.381) = 0.381
    
    CGSize scaledImageSize = CGSizeMake(imageSize.width * scaleFactor, imageSize.height * scaleFactor);
    
    if (self.alignRight) {
        CGFloat newScaledImageWidth = scaledImageSize.width + (scaledImageSize.width - frameSize.width);
        contentsRect.size.width = newScaledImageWidth / scaledImageSize.width;
    }
    
    self.layer.contentsRect = contentsRect;
}

@end
