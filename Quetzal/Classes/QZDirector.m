//
//  QZDirector.m
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QZDirector.h"
#import "QZRenderer.h"

@interface QZDirector ()

- (void) gameFrame;

@end



@implementation QZDirector

+(QZDirector*)instance
{
    static QZDirector *sharedDirector = nil;
    
    @synchronized(self)
    {
        if (sharedDirector == nil)
        {
            sharedDirector = [[self alloc] init];
        }
    }
    return sharedDirector;
}


-(id)init
{
    if (self = [super init])
    {
        //QZDirector initialisation goes here!
        
        //First, set the required instance pointers to nil...
        gameRenderer = nil;
        loopTimer = nil;
        
        //Next, set the default instance variables for stuff like the fps...
        fps = 60;
    }
    return self;
}

-(void)initialiseGameViewWithSize:(QZSize)thesize
{
    gameRenderer = [QZRenderer newGameRendererWithViewSize:thesize];
    
    
}

//Private method that is triggered on every new game frame.
-(void)gameFrame
{
    //Call the helper's update methods...
    [gameRenderer update];
}

-(void)runGame
{
    if(loopTimer == nil)
    {
        loopTimer = [OFTimer scheduledTimerWithTimeInterval:1.0f/fps target:self selector:@selector(gameFrame) repeats:true];
    }
    
}

-(void)setFPS:(int)theNewFPS
{
    fps = theNewFPS;
    
    if(loopTimer != nil)
    {
        [loopTimer invalidate];
        loopTimer = nil;
        loopTimer = [OFTimer scheduledTimerWithTimeInterval:1.0f/fps target:self selector:@selector(gameFrame) repeats:true];
    }
}

-(void)setWindowTitle:(OFString *)newTitle
{
    [gameRenderer setWindowTitle:newTitle];
}


@end
