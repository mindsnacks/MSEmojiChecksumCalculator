//
//  MSEmojiChecksumCalculator.m
//  Achilles
//
//  Created by Jacob Eiting on 10/10/13.
//  Copyright (c) 2013 MindSnacks. All rights reserved.
//

#import "MSEmojiChecksumCalculator.h"

#import <CommonCrypto/CommonDigest.h>
#import "NSCharacterSet+Emoji.h"

typedef unsigned char MD5[CC_MD5_DIGEST_LENGTH];

@implementation MSEmojiChecksumCalculator

- (NSString *)emojiChecksumForFile:(NSString *)path
{
    NSData *data = [MSEmojiChecksumCalculator fileMD5:path];
    NSMutableString *emojiChecksum = [[NSMutableString new] autorelease];
    const char *bytes = (const char *)[data bytes];
    for (int i = 0; i < 3; i++) {
        char byte = bytes[i];
        [emojiChecksum appendString:[NSCharacterSet emojiCharForByte:byte]];
    }
    return emojiChecksum;
}

#define CHUNK_SIZE 1024

+ (NSData *)fileMD5:(NSString*)path
{
	NSFileHandle *handle = [NSFileHandle fileHandleForReadingAtPath:path];
	NSParameterAssert(handle);

	CC_MD5_CTX md5;

	CC_MD5_Init(&md5);

	BOOL done = NO;
	while(!done)
	{
		NSData* fileData = [handle readDataOfLength: CHUNK_SIZE ];
		CC_MD5_Update(&md5, [fileData bytes], (int)[fileData length]);
		if( [fileData length] == 0 ) done = YES;
	}

	MD5 digest;
	CC_MD5_Final(digest, &md5);
    return [NSData dataWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
}

@end
