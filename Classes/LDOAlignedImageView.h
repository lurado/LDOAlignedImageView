//
//  LDOAlignedImageView.h
//  LDOAlignedImageViewExample
//
//  Created by Julian Raschke on 17.02.15.
//  Copyright (c) 2015 Julian Raschke und Sebastian Ludwig GbR. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LDOAlignedImageView : UIImageView

@property (nonatomic) IBInspectable BOOL alignTop;
@property (nonatomic) IBInspectable BOOL alignBottom;
@property (nonatomic) IBInspectable BOOL alignLeft;
@property (nonatomic) IBInspectable BOOL alignRight;

@end
