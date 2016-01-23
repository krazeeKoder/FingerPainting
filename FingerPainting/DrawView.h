//
//  DrawView.h
//  FingerPainting
//
//  Created by Anthony Tulai on 2016-01-22.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface DrawView : UIView

@property (strong)  UIBezierPath *path;
//@property (strong)  NSMutableArray *pointsOnPath;

@end
