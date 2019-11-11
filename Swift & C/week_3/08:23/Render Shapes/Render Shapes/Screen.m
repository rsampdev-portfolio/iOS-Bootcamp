//
//  Screen.m
//  Render Shapes
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Screen.h"

@implementation Screen

- (BOOL)shouldDrawCircle:(Renderer *)renderer {
    return arc4random_uniform(100) % 2 == 0;
}

- (BOOL)shouldDrawSquare:(Renderer *)renderer {
    return arc4random_uniform(100) % 2 == 0;
}

- (BOOL)shouldDrawTriangle:(Renderer *)renderer {
    return arc4random_uniform(100) % 2 == 0;
}

@end
