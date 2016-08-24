//
//  UIView+CustomViews.m
//  Sample
//
//  Created by Shubhangi Pandya on 3/8/16.
//  Copyright © 2016 Shubhangi. All rights reserved.
//

#import "UIView+NHPCustomViews.h"

@implementation UIView (NHPCustomViews)

+ (void)addLinearGradientToView:(UIView *)theView withColor:(UIColor *)theColor transparentToOpaque:(BOOL)transparentToOpaque {
  CAGradientLayer *gradient = [CAGradientLayer layer];
  
  //the gradient layer must be positioned at the origin of the view
  CGRect gradientFrame = theView.frame;
  gradientFrame.origin.x = 0;
  gradientFrame.origin.y = 0;
  gradient.frame = gradientFrame;
  
  //build the colors array for the gradient
  NSArray *colors = [NSArray arrayWithObjects:
                     //(id)[theColor CGColor],
                     (id)[[theColor colorWithAlphaComponent:0.4f] CGColor],
                     (id)[[theColor colorWithAlphaComponent:0.3f] CGColor],
                     (id)[[theColor colorWithAlphaComponent:0.2f] CGColor],
                     (id)[[theColor colorWithAlphaComponent:0.1f] CGColor],
                     (id)[[UIColor clearColor] CGColor],
                     (id)[[UIColor clearColor] CGColor],
                     (id)[[UIColor clearColor] CGColor],
                     (id)[[UIColor clearColor] CGColor],
                     (id)[[UIColor clearColor] CGColor],
                     nil];
  
  
  colors = [[colors reverseObjectEnumerator] allObjects];
  //apply the colors and the gradient to the view
  gradient.colors = colors;
  
  [theView.layer insertSublayer:gradient atIndex:0];
}


@end
