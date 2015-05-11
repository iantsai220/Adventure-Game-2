//
//  Player.h
//  AdventureGame
//
//  Created by Ian Tsai on 2015-05-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Rooms;

@interface Player : NSObject

@property (nonatomic) int health;

@property (nonatomic) int location;

@property (nonatomic) BOOL win;

//@property (nonatomic) NSString *name;

-(void)movePlayer:(NSString *)move;

-(void)checkRoom: (Rooms *)room;



@end
