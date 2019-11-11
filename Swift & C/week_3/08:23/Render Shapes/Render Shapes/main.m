//
//  main.m
//  Render Shapes
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Renderer.h"
#import "Screen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Renderer * renderer = [[Renderer alloc] init];
        Screen * screen = [[Screen alloc] init];
        
        [renderer render:screen];
    }
    return 0;
}
