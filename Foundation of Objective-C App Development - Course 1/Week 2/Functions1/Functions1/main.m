//
//  main.m
//  Functions1
//
//  Created by Graphic on 6/14/18.
//  Copyright © 2018 Kraim Ebrahem Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

void dayGreeting(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good Morning\n");
        printf("Good afternon\n");
        printf("Good Evening\n");
    }
    
}

int main(int argc, const char * argv[]) {
    
    dayGreeting(2);
    
    return 0;
}
