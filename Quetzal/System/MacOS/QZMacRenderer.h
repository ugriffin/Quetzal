//
//  QZMacRenderer.h
//  Quetzal
//
//  Created by Uriel Griffin on 8/02/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QuetzalIncludes.h"
#import "QZRenderer.h"

@class NSOpenGLView;

@interface QZMacRenderer : QZRenderer
{
    NSOpenGLView* gameView;
}

//Initialises an SDL window with the specified size.
-(id)initNewGameViewWithSize:(QZSize)windowSize;

//This gets called at every frame.
-(void)update;

//Sets the window title
-(void)setWindowTitle:(OFString*)newTitle;


@end
