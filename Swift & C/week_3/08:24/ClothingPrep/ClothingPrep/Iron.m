//
//  Iron.m
//  ClothingPrep
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Iron.h"

@interface Iron ()

@property (nonatomic, readwrite, getter=isReady) BOOL ready;
@property (nonatomic, readwrite) BOOL hasWater;
@property (nonatomic, readwrite, getter=isHot) BOOL hot;

@end

@implementation Iron

- (void)setHot:(BOOL)hot {
    if (hot == _hot) {
        return;
    }
    
    _hot = hot;
    
    if (_hot) {
        [self.delegate ironDidHeatUp:self];
    } else {
        id<IronDelegate> strongDelegate = self.delegate;
        
        if ([strongDelegate respondsToSelector:@selector(ironDidCoolDown:)]) {
            [strongDelegate ironDidCoolDown:self];
        }
    }
}

- (void)getReady {
    NSLog(@"Iron is heating up.");
    self.hot = YES;
}

- (void)addWater {
    NSLog(@"Adding water to iron reservoir.");
    self.hasWater = YES;
}

- (void)iron {
    NSLog(@"Iron clothes.");
    self.hot = NO;
    self.hasWater = NO;
}

@end
