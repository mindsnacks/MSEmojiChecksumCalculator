//
//  NSCharacterSet+Emoji.h
//  Achilles
//
//  Created by Jacob Eiting on 10/10/13.
//  Copyright (c) 2013 MindSnacks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSCharacterSet (Emoji)
+ (NSCharacterSet*)emojiCharacterSet;
+ (NSString *)emojiCharForByte:(char)character;
+ (NSString *)emojiString;
@end
