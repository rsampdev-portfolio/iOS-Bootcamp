//
//  Iron.h
//  ClothingPrep
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IronDelegate;

@interface Iron : NSObject

@property (nonatomic, readonly, getter=isReady) BOOL ready;
@property (nonatomic, readonly) BOOL hasWater;
@property (nonatomic, readonly, getter=isHot) BOOL hot;
@property (nonatomic, weak) id<IronDelegate> delegate;

- (void)getReady;

- (void)addWater;

- (void)iron;

@end

@protocol IronDelegate <NSObject>

@required

- (void)ironDidHeatUp:(Iron *)iron;

@optional

- (void)ironDidCoolDown:(Iron *)iron;

@end
