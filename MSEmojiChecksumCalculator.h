//
//  MSEmojiChecksumCalculator.h
//  Achilles
//
//  Created by Jacob Eiting on 10/10/13.
//  Copyright (c) 2013 MindSnacks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSEmojiChecksumCalculator : NSObject

- (NSString *)emojiChecksumForFile:(NSString *)path;

@end
