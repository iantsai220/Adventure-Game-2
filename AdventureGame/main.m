//
//  main.m
//  AdventureGame
//
//  Created by Ian Tsai on 2015-05-09.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Rooms.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *player1 = [[Player alloc] init];
        
        Rooms *rooms = [[Rooms alloc] init];
        
        NSLog(@"enter the direction you wish to move u = up, d = down, l = left, r = right");

    while (YES) {
            
        //Command line message
        
        NSLog(@"> ");
        char str[100];
        fgets(str,100, stdin);
        
        NSString *string = [[NSString alloc] initWithUTF8String:str];
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        [player1 movePlayer:string];
        
        [player1 checkRoom:rooms];
        
        if (player1.health == 0) {
            NSLog(@"You lost");
            break;
        }
        else if (player1.win == YES) {
            NSLog(@"You Won!");
            break;
        }

        
    }
        
   
    }
    return 0;
}
