//
//  Renderer.h
//  Render Shapes
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RendererDelegate;

@interface Renderer : NSObject

- (void)render:(id<RendererDelegate>)screen;

@end

@protocol RendererDelegate

- (BOOL)shouldDrawCircle:(Renderer *)renderer;

- (BOOL)shouldDrawSquare:(Renderer *)renderer;

- (BOOL)shouldDrawTriangle:(Renderer *)renderer;

@end
