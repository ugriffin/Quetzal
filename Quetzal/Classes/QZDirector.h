//
//  QZDirector.h
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

/*
 Director is the class in charge of managing the Quetzal engine. Much like a concert director, 
 it's in charge of running and handling the whole game and making sure it runs smoothly. It's aided
 by a bunch of helper classes which handle more low level tasks like managing SDL.
 */

#ifndef QZDirector_h
#define QZDirector_h

#import "QuetzalIncludes.h"

@class QZRenderer;

@interface QZDirector : OFObject
{
    @private
    
    /*
     ####################
     ##DIRECTOR HELPERS##
     ####################
     */
    
    //Handles the game view...
    QZRenderer* gameRenderer;

    
    //Other classes...
    int fps;
    OFTimer* loopTimer;
}

//Gets the pointer for the Director singleton.
+ (QZDirector*) instance;

//Initialises the game window & view.
- (void) initialiseGameViewWithSize:(QZSize) thesize;

//Initialises the game loop, e.g, runs the game.
- (void) runGame;

//Sets the frames per second for the game
- (void) setFPS:(int)theNewFPS;

//Sets the window title
- (void) setWindowTitle:(OFString*)newTitle;




@end


#endif /* QZDirector_h */
