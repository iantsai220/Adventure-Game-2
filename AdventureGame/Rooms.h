//
//  Rooms.h
//  AdventureGame
//
//  Created by Ian Tsai on 2015-05-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@interface Rooms : NSObject

@property (nonatomic) int roomNo;

@property (nonatomic) int treasure;

@property (nonatomic) int cube;

-(instancetype)init;

@end
