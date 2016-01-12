//
//  Box.m
//  Boxes
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Box.h"

@implementation Box

//-(void)initBoxWithHeight:(float)boxHeight width:(float)boxWidth andDepth:(float)boxDepth {
//    self.height = boxHeight;
//    self.width = boxWidth;
//    self.depth = boxDepth;
//    
//    [[Box alloc] initBoxWithHeight:boxHeight width:boxWidth andDepth:boxDepth];
//}

-(instancetype)initBoxWithHeight:(float)boxHeight width:(float)boxWidth andDepth:(float)boxDepth {
    self = [super init];
    if (self) {
        _height = boxHeight;
        _width = boxWidth;
        _depth = boxDepth;
    }
    return self;
}


-(float)volume {
    return self.height * self.width * self.depth;
}

-(void)divide:(Box *)otherBox {
    if (self.volume > otherBox.volume) {
        float divide = self.volume / otherBox.volume;
        NSLog(@"%f can fit %f times into %f", otherBox.volume, divide, self.volume);
        
    } else if (self.volume < otherBox.volume) {
        float divide = otherBox.volume / self.volume;
        NSLog(@"%f can fit %f times into %f", self.volume, divide, otherBox.volume);
    }
}

@end
