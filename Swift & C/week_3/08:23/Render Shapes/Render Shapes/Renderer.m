//
//  Renderer.m
//  Render Shapes
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Renderer.h"

@implementation Renderer

- (void)render:(id<RendererDelegate>)canvas {
    if ([canvas shouldDrawCircle:self]) {
        NSLog(@"Drew a circle.");
    } else if ([canvas shouldDrawSquare:self]) {
        NSLog(@"Drew a square.");
    } else if ([canvas shouldDrawTriangle:self]) {
        NSLog(@"Drew a triangle.");
    } else {
        NSLog(@"Graphics card crashed!");
    }
}

@end
