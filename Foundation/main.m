//
//  main.m
//  Foundation
//
//  Created by Fadie on 21/01/2015.
//  Copyright (c) 2015 Fadie. All rights reserved.
//

#import <Foundation/Foundation.h>

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
    
    return 0;
    
    
    }
}
