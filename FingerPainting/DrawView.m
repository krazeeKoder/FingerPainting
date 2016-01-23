//
//  DrawView.m
//  FingerPainting
//
//  Created by Anthony Tulai on 2016-01-22.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _path = [UIBezierPath bezierPath];
        //_pointsOnPath = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [[UIColor whiteColor] setStroke];
    self.path.lineWidth = 10.0;
    [self.path stroke];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //[super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    [self.path moveToPoint:[touch locationInView:self]];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   // [super touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    [self.path addLineToPoint:[touch locationInView:self]];
    [self setNeedsDisplay];
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //[super touchesEnded:touches withEvent:event];
    [self setNeedsDisplay];
    
}
@end
