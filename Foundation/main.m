//
//  main.m
//  Foundation
//
//  Created by Fadie on 21/01/2015.
//  Copyright (c) 2015 Fadie. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.14159
#define RAD_TO_DEG(radians) (radians * (180.0/ PI))

// typedef

typedef unsigned char ColorComponent;

// struct

typedef struct {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
} Color;

// enum

typedef enum {
    FORD,
    HONDA,
    NISSAN,
    PORSCHE
} CarModel;

// function basic syntax

int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}

NSString *getRandomMake(NSArray *makes) {
    int maximum = (int)[makes count];
    int randomIndex = arc4random_uniform(maximum);
    return makes[randomIndex];
}

// declartion of function

NSString *getRandomMake2(NSArray *);

//
//
// @autoreleasepool
//
//

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//      Hello World
        
        NSLog(@"Hello world");
        
//      Basic Data Types
        
        NSLog(@"=====Basic Data Types=====");
        int aNumber = 24;
        int moreNumber = (float)aNumber;
        float floatNum = 24.5;
        BOOL thisIsTrue = true;
        NSString *aString = @"Hello, my name is Fadie";
        
//      Log string
        
        NSLog(aString);
        
//      Log Numbers using String Format Specifiers
        
        NSLog(@"=====Numbers=====");
        
        NSLog(@"%d", aNumber);
        NSLog(@"%.1f", floatNum);
        NSLog(@"%d", moreNumber);
        
//      Log Bool by substituting log strings to value
        
        NSLog(thisIsTrue ? @"True" : @"False");
        
//      Arithmetic
        
        NSLog(@"=====Arithmetic=====");
        
        NSLog(@"%d", 6 + 2);
        NSLog(@"%f", 6.23 + 94.2);
        NSLog(@"%d", 10 * 10);
        NSLog(@"%d", 180 - 60);
        NSLog(@"%d", 6 / 2);
        
        int i = 0;
        NSLog(@"%d", i);
        i++;
        i++;
        NSLog(@"%d", i);
        i--;
        NSLog(@"%d", i);
        
        
//      Conditionals
        
        NSLog(@"=====Conditionals=====");
        
        int modelYear = 1990;
        if (modelYear < 1967) {
            NSLog(@"That car is an antique!");
        } else if (modelYear <= 1991) {
            NSLog(@"That car is a classic!");
        } else if (modelYear == 2015) {
            NSLog(@"That car is new!");
        } else {
            NSLog(@"There is absolutely nothing special with that car");
        }
        
        int oneNumber = 1;
        int twoNumber = 2;
        
        if (oneNumber == twoNumber) {
            NSLog(@"These numbers are the same");
        } else if (oneNumber != twoNumber) {
            NSLog(@"These numbers are different!");
        }
        
//      Loops
        
        NSLog(@"=====Loops=====");
        
        int modelYear2 = 1990;
        
        int i2 = 1;
        while (i2 < 5) {
            if (i2 == 3) {
                NSLog(@"Aborting the while-loop");
                break;
            }
            NSLog(@"Current year: %d", modelYear2 + i2);
            i2++;
        }
        
        for (int i=0; i<5; i++); {
            if (i == 3) {
                NSLog(@"Skipping a for-loop iteration");
            }
            NSLog(@"Current year: %d", modelYear2 + i2);
        }
        
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        
//      Macros
        
        NSLog(@"=====Macros=====");
        
        double angle = PI / 2;
        NSLog(@"%.1f", RAD_TO_DEG(angle));
        
//      Typedef
        
        NSLog(@"=====Typedef=====");
        
        ColorComponent red = 225;
        ColorComponent green = 160;
        ColorComponent blue = 0;
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)", red, green, blue);
        
//      Structs
        
        NSLog(@"=====Struct=====");
        
        Color carColor = {255, 160, 0};
        NSLog(@"Your paint job is (R:%hhu, G: %hhu, B: %hhu)", carColor.red, carColor.green, carColor.blue);
        
        
//      Enums
        
        NSLog(@"=====Enum=====");
        
        CarModel myCar = NISSAN;
        switch (myCar) {
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars?");
                break;
            case HONDA:
            case NISSAN:
                NSLog(@"You like Japanese cars?");
                break;
            default:
                break;
        }
        
//      Primitive Arrays
        
        NSLog(@"=====Primitive Array=====");
        
        int years[4] = {1968, 1970, 1989, 1999};
        years[0] = 1967;
        for (int i=0; i<4; i++) {
            NSLog(@"The year at index %d is: %d", i, years[i]);
        }
        
//      Pointer
        
        NSLog(@"=====Pointer=====");
        
        int year = 1967; // Define a normal variable
        int *pointer; // Declare a pointer that points to an int
        pointer = &year; // Find the memory address of the variable
        NSLog(@"%d", *pointer); // Dereference the address to get its value
        *pointer = 1990; // Assign a new value to the memory address
        NSLog(@"%d", year); // Access the value via the variable.
        
//      Null Pointer
        
        NSLog(@"=====Null Pointer=====");
        
        int year1 = 1967;
        int *pointer1 = &year1;
        NSLog(@"%d", *pointer1);
        pointer1 = NULL;
        
//      Void Pointer
        
        NSLog(@"=====Void Pointer=====");
        
        int year2 = 1967;
        void *genericPointer = &year2;
        int *intPointer = (int *)genericPointer;
        NSLog(@"%d", *intPointer);
        
        
//        
//      FUNCTIONS
//
        
//      Basic Syntax
        
        int randomNumber = getRandomInteger(-10, 10);
        NSLog(@"Selected a random number between -10 and 10: %d", randomNumber);
        
        NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
        NSLog(@"Selected a %@", getRandomMake(makes));
        
//      Implementation vs. Declaration (declared before main)
        
        NSArray *makes2 = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
        NSLog(@"Selected a %@", getRandomMake2(makes2));
        
    
    return 0;
        
    
    
    }
    
}

//      Implementation

NSString *getRandomMake2(NSArray *makes2) {
    int maximum = (int)[makes2 count];
    int randomIndex = arc4random_uniform(maximum);
    return makes2[randomIndex];
}
