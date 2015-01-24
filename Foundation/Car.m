//
//  Car.m
//  Foundation
//
//  Created by Fadie on 23/01/2015.
//  Copyright (c) 2015 Fadie. All rights reserved.
//

#import "Car.h"

@implementation Car {
    double _odometer;
}

@synthesize model = _model;

- (void)drive {
    NSLog(@"Driving a %@. Vroooom!", self.model);
}

@end
