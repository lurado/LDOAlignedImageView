//
//  JLNRGravityImageView.h
//  JLNRGravityImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface JLNRGravityImageView : UIImageView

@property (nonatomic) IBInspectable BOOL alignTop;
@property (nonatomic) IBInspectable BOOL alignBottom;
@property (nonatomic) IBInspectable BOOL alignLeft;
@property (nonatomic) IBInspectable BOOL alignRight;

@end
