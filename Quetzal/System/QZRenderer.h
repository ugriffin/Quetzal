//
//  QZGameView.h
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QuetzalIncludes.h"
#include <stdio.h>


@class AppDelegate;

@interface QZRenderer : OFObject
{
    @private
    //GLFWwindow* gameWindow;
    AppDelegate* application;
}

+(id)newGameRendererWithViewSize:(QZSize)windowSize;

//PRIVATE METHOD: Initi
-(id)init;

//This gets called at every frame.
-(void)update;

//Sets the window title
-(void)setWindowTitle:(OFString*)newTitle;

@end
