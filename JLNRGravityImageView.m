//
//  JLNRGravityImageView.m
//  JLNRGravityImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke. All rights reserved.
//

#import "JLNRGravityImageView.h"


@implementation JLNRGravityImageView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    switch (self.contentMode) {
        case UIViewContentModeBottom:
        case UIViewContentModeBottomLeft:
        case UIViewContentModeBottomRight:
        case UIViewContentModeCenter:
        case UIViewContentModeLeft:
        case UIViewContentModeRedraw:
        case UIViewContentModeRight:
        case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleToFill:
        case UIViewContentModeTop:
        case UIViewContentModeTopLeft:
        case UIViewContentModeTopRight:
            break;
    }
}

@end
