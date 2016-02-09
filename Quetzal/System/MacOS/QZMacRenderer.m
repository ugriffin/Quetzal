//
//  QZMacRenderer.m
//  Quetzal
//
//  Created by Uriel Griffin on 8/02/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QZMacRenderer.h"
#import <ObjFW-Bridge/ObjFW-Bridge.h>
#import <Cocoa/Cocoa.h>


@implementation QZMacRenderer

-(id)initNewGameViewWithSize:(QZSize)windowSize
{
    if (self = [super init])
    {
        //OFString* nibName = @"MacView.xib";
        //NSString* nsNibName = [nibName NSObject];
        
        NSString* nsNibName = [[NSString alloc]initWithUTF8String:"MacView.xib"];
        //NSString* nsNibName = [NSString stringWithUTF8String:"MacView.xib"];
        NSNib* nibFile = [[NSNib alloc]initWithNibNamed:nsNibName bundle:nil];
        [nibFile instantiateWithOwner:self topLevelObjects:nil];
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


