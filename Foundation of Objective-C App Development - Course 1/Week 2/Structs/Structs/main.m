//
//  main.m
//  Structs
//
//  Created by Graphic on 6/19/18.
//  Copyright © 2018 Kraim Ebrahem Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

struct time {
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
};

typedef struct {
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
} AnotherTime;

struct Biography {
    AnotherTime birth;
    AnotherTime graduation;
};

void timeGreatingV1(int year, int month, int day, int hour, int minute, int second) {
    printf("The day is: %d-%d-%d, the time is: %d:%d:%d\n\n", month, day, year, hour, minute, second);
}

void timeGreatingV2(struct time myTimeCopy) {
    printf("The day is: %d-%d-%d, the time is: %d:%d:%d\n", myTimeCopy.month, myTimeCopy.day, myTimeCopy.year, myTimeCopy.hour, myTimeCopy.minute, myTimeCopy.second);
}

void showBiographyInformation(struct Biography bioTime) {
    printf("----- Birth Date -----\n");
    printf("The day is: %d-%d-%d, the time is: %d:%d:%d\n\n", bioTime.birth.month, bioTime.birth.day, bioTime.birth.year, bioTime.birth.hour, bioTime.birth.minute, bioTime.birth.second);
    
    printf("----- Graduation Date -----\n");
    printf("The day is: %d-%d-%d, the time is: %d:%d:%d\n\n", bioTime.graduation.month, bioTime.graduation.day, bioTime.graduation.year, bioTime.graduation.hour, bioTime.graduation.minute, bioTime.graduation.second);
}

int main(int argc, const char * argv[]) {
    
    struct time myTime;
    myTime.year = 2018;
    myTime.month = 6;
    myTime.day = 19;
    myTime.hour = 3;
    myTime.minute = 45;
    myTime.second = 33;
    timeGreatingV2(myTime);
    
    int year = 2018;
    int month = 6;
    int day = 19;
    int hour = 3;
    int minute = 45;
    int second = 33;
    timeGreatingV1(year, month, day, hour, minute, second);
    
    AnotherTime myAnotherTime;
    myAnotherTime.year = 2018;
    myAnotherTime.month = 6;
    myAnotherTime.day = 19;
    myAnotherTime.hour = 3;
    myAnotherTime.minute = 45;
    myAnotherTime.second = 33;
    struct Biography bioInformation;
    bioInformation.birth = myAnotherTime;
    bioInformation.graduation = myAnotherTime;
    showBiographyInformation(bioInformation);
    
    return 0;
}
