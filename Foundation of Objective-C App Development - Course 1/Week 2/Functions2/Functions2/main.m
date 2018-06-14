//
//  main.m
//  Functions2
//
//  Created by Graphic on 6/14/18.
//  Copyright © 2018 Kraim Ebrahem Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

void goodDay(char *timeOfDay) {
    printf("Good %s\n", timeOfDay);
}

void allDay() {
    goodDay("Morning");
    goodDay("Afternon");
    goodDay("Evening");
}

void dayGreating(int loops) {
    for (int i = 0; i < loops; i++) {
        allDay();
    }
}

int main(int argc, const char * argv[]) {
    
    dayGreating(2);
    
    return 0;
}
