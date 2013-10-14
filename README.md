MSEmojiChecksumCalculator
=========================

Calculate checksums that are human readable and fun! 🍌🙆🍺🚽

## Usage
```
#import "MSEmojiChecksumCalculator.h"

...

- (void)checkDatSum
{
	NSEmojiChecksumCalculator *calc = [[NSEmojiChecksumCalculator alloc] init];

	NSString *pathToCheck = @"some/dumb/path/🍺";

	NSString *checksum = [calc checksumForFile:pathToCheck];

	NSLog(@"Your dumb file version = %@", checksum);
}
```

## Why?

Checksums are a useful way to quickly check the contents of a bunch of data. The MD5 checksum spits out 16 bytes of random numbers. While this is great for computers, humans don't want to look at a huge hex string. The emoji checksum calculator spits out 4 emoji character hash.

The caclulator uses 845 different emoji characters for a total of 509,831,700,625 unique hash codes. Good enough.

