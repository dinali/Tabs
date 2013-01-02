//
//  MainDictionary.h
//  Tabs
//  NOT CURRENTLY USED
//  Created by Dina Li on 9/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainDictionary : NSObject{
    NSMutableDictionary *dictionary;
}

+(MainDictionary *)sharedDictionary;
-(NSString *)getStringForKey:(NSString *)string;
-(void)setString:(NSString *)string forKey:(NSString *)key;

@end
