//
//  BookMarkView.m
//  BookMarkView
//
//  Created by jianpx on 5/25/14.
//  Copyright (c) 2014 __MyCompany__. All rights reserved.
//

#import "BookMarkView.h"

#define TRIANGLE_HEIGHT_RIO 0.10

@implementation BookMarkView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commInitWithFrame:frame];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commInitWithFrame:self.frame];
    }
    return self;
}

- (void)commInitWithFrame:(CGRect)frame
{
    CGFloat verticalLabelWidth = 20;
    CGFloat labelHeight = (1 - TRIANGLE_HEIGHT_RIO) * frame.size.height;
    self.markLabel = [[UILabel alloc] init];
    if (frame.size.width > verticalLabelWidth) {
        self.markLabel.frame = CGRectMake((frame.size.width - verticalLabelWidth) / 2, 0, verticalLabelWidth, labelHeight);
    } else {
        self.markLabel.frame = CGRectMake(0, 0, frame.size.width, labelHeight);
    }
    self.markLabel.numberOfLines = 0;
    self.markLabel.backgroundColor = [UIColor clearColor];
    self.markLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.markLabel.textAlignment = NSTextAlignmentCenter;
    self.backgroundColor = [UIColor clearColor];
    [self addSubview:self.markLabel];
}

- (void)setBgColor:(UIColor *)bgColor
{
    _bgColor = bgColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.bgColor.CGColor);

    CGContextMoveToPoint(context, rect.origin.x, rect.origin.y);
    CGContextAddLineToPoint(context, rect.origin.x, rect.origin.y + rect.size.height);
    CGContextAddLineToPoint(context, rect.origin.x + rect.size.width / 2, (rect.origin.y + rect.size.height) * (1 - TRIANGLE_HEIGHT_RIO));
    CGContextAddLineToPoint(context, rect.origin.x + rect.size.width, rect.origin.y + rect.size.height);
    CGContextAddLineToPoint(context, rect.origin.x + rect.size.width, rect.origin.y);
    CGContextClosePath(context);

    CGContextDrawPath(context, kCGPathFill);
}

@end
