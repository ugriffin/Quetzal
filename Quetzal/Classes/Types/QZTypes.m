//
//  QZTypes.m
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#import "QZTypes.h"

QZSize newQZSize(float width,float height)
{
    QZSize newSize;
    
    newSize.width = width;
    newSize.height = height;
    
    return newSize;
}

QZPoint newQZPoint(float x,float y)
{
    QZPoint newPoint;
    
    newPoint.x = x;
    newPoint.y = y;
    
    return newPoint;
}