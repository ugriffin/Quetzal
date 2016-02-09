//
//  QZTypes.h
//  Quetzal
//
//  Created by Uriel Griffin on 17/01/2016.
//  Copyright © 2016 Vetra Games. All rights reserved.
//

#ifndef QZTypes_h
#define QZTypes_h

//Struct used for holding size values.
typedef struct QZSize
{
    float width;
    float height;
} QZSize;

//Creates a new QZSize struct.
QZSize newQZSize(float width,float height);

//Struct used for holding position values
typedef struct QZPoint
{
    float x;
    float y;
} QZPoint;

QZPoint newQZPoint(float x,float y);


#endif /* QZTypes_h */
