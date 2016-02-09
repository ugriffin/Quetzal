//
//  AppDelegate.m
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "AppDelegate.h"

//TEMP INCLUDE
#import "QZDirector.h"

OF_APPLICATION_DELEGATE(AppDelegate);

@implementation AppDelegate

- (void)applicationDidFinishLaunching
{
    // Insert code here to initialize your application
    printf("Quetzal is initialising!");
    
    [[QZDirector instance]initialiseGameViewWithSize:newQZSize(640, 480)];
    [[QZDirector instance]runGame];
    [[QZDirector instance]setWindowTitle:@"Quetzal!"];
    
    printf("\nWelcome to Quetzal! :)");

}

- (void)applicationWillTerminate
{
    // Insert code here to tear down your application
}

@end
