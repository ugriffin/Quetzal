//
//  QZGameView.m
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QZRenderer.h"
#import "AppDelegate.h"

#import "QZMacRenderer.h"

@implementation QZRenderer

+(id)newGameRendererWithViewSize:(QZSize)windowSize
{
    return [[QZMacRenderer alloc]initNewGameViewWithSize:windowSize];
}

-(id)init
{
    if (self = [super init])
    {
        Class objectClass = [self class];
        if( objectClass == [QZRenderer class] )
        {
            printf("QZRenderer cannot be initialised with this method...");
            @throw [OFInitializationFailedException exceptionWithClass:[QZRenderer class]];
            return nil;
        }
        application = nil;
        application = (AppDelegate*)[[OFApplication sharedApplication] delegate];
        

    }
    
    return self;
}

-(void)update
{
    
}

-(void)setWindowTitle:(OFString *)newTitle
{
    
}

@end
