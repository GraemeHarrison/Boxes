//
//  Box.h
//  Boxes
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

-(instancetype)initBoxWithHeight:(float)boxHeight width:(float)boxWidth andDepth:(float)boxDepth;

-(float)volume;

-(void)divide:(Box *)otherBox;

@end
