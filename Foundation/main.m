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
        int aNumber = 24;
        int moreNumber = (float)aNumber;
        float floatNum = 24.5;
        BOOL thisIsTrue = true;
        NSString *aString = @"Hello, my name is Fadie";
        
//      Log string
        NSLog(aString);
        
//      Log Numbers using String Format Specifiers
        NSLog(@"%d", aNumber);
        NSLog(@"%.1f", floatNum);
        NSLog(@"%d", moreNumber);
        
//      Log Bool by substituting log strings to value
        NSLog(thisIsTrue ? @"True" : @"False");
        
//      Comparing Strings
        NSString *car = @"Aston Martin DB9";
        if ([car isEqualToString:@"Aston Martin"]) {
            NSLog(@"That car is an Aston Martin");
        }
        if ([car hasPrefix:@"Aston Martin"]) {
            NSLog(@"That car is an Aston Martin of some sort");
        }
        if ([car hasSuffix:@"DB9"]) {
            NSLog(@"That car is a DB9");
        }
        
//      Alphabetically sorting strings
        NSString *otherCar = @"Bentley";
        NSComparisonResult result = [car compare:otherCar];
        if (result == NSOrderedAscending) {
            NSLog(@"The letter 'A' comes before 'B'");
        } else if (result == NSOrderedSame) {
            NSLog(@"We're comparing the same string");
        } else if (result == NSOrderedDescending) {
            NSLog(@"The letter 'A' comes after 'B'");
        }
        
    }
    
    
    
    return 0;
    
    
}
