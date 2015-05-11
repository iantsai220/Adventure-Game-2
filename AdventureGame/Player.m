//
//  Player.m
//  AdventureGame
//
//  Created by Ian Tsai on 2015-05-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "Player.h"
#import "Rooms.h"

@implementation Player

-(instancetype)init {
    
    self = [super init];
    if (self) {
        
//        _name = name;
        _health = 2;
        _location = 1;
        _win = NO;
        
    }
    
    return self;
    
}

-(void)movePlayer:(NSString *)move{
    
    if ([move isEqualToString:@"d"]) {
        if (_location <= 4) {
            NSLog(@"Can't go down");
        }
        else {
            _location -= 4;
            NSLog(@"You are in Room %i", self.location);
        }

    }
    else if ([move isEqualToString:@"u"]) {
        if (_location > 13 && _location < 16) {
            NSLog(@"Can't go down");
        }
        else {
            self.location += 4;
            NSLog(@"You are in Room %i", self.location);
        }
    }
    else if ([move isEqualToString:@"l"]) {
        if (self.location % 4 == 1 || self.location == 1) {
            NSLog(@"Can't go left");
        }
        else {
            self.location -= 1;
            NSLog(@"You are in Room %i", self.location);
        }
    }
    else if ([move isEqualToString:@"r"]) {
        if (self.location % 4 == 0) {
            NSLog(@"Can't go right");
        }
        else {
            self.location += 1;
            NSLog(@"You are in Room %i", self.location);
        }
    }
}

-(void)checkRoom: (Rooms *)room {
    if (self.location == room.treasure) {
        NSLog(@"Hurray you found the Treasure in room %i, Congrats", self.location);
        self.win = YES;
    }
    else if (self.location == room.cube){
        NSLog(@"You found a fucking cube that takes your health in room %i ... wtf", self.location);
        self.health -= 1;
    }
    else {
        NSLog(@"there is nothing in room %i .. ", self.location);
    }
}


@end
