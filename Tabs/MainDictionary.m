//
//  MainDictionary.m
//  Tabs
//
//  Created by Dina Li on 9/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainDictionary.h"

static MainDictionary *sharedDictionary;

@implementation MainDictionary

-(id)init{
    self = [super init];
    dictionary = [[NSMutableDictionary alloc] init];
    // if you want to add anything preliminary to the dictionary, do it here
    return self;
}

+(MainDictionary *)sharedDictionary{
    if (!sharedDictionary) {
        sharedDictionary = [[MainDictionary alloc] init];
    }
    return sharedDictionary;
}
-(NSString *)getStringForKey:(NSString *)string{
    return [dictionary objectForKey:string];
}
-(void)setString:(NSString *)string forKey:(NSString *)key{
    [dictionary setValue:string forKey:key];
}

@end
