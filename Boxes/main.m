//
//  main.m
//  Boxes
//
//  Created by Graeme Harrison on 2016-01-12.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}

int main() {
    
    Box *firstBox = [[Box alloc] initBoxWithHeight:10 width:10 andDepth:10];
    NSLog(@"volume of the first box is: %f", [firstBox volume]);
    
    Box *secondBox = [[Box alloc] initBoxWithHeight:20 width:20 andDepth:20];
    NSLog(@"volume of the second box is: %f", [secondBox volume]);
    
    [secondBox divide:firstBox];
    
    
    return 0;
}