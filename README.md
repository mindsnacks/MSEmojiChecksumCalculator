MSEmojiChecksumCalculator
=========================

Calculate checksums that are human readable and fun! 🍌🙆🚽


## Usage
```
#import "MSEmojiChecksumCalculator.h"

...

- (void)checkDatSum
{
	NSEmojiChecksumCalculator *calc = [[NSEmojicChecksumCalculator alloc] init];

	NSString *pathToCheck = @"some/dumb/path/🍺";

	NSString *checksum = [calc checksumForFile:pathToCheck];

	NSLog(@"Your dumb file version = %@", checksum);
}
```

![Awesome use of emoji checksum](https://www.dropbox.com/s/bb1wwals0p4b2bq/Screenshot%202013-10-14%2012.26.03.png)

## Why?

Checksums are a useful way to quickly check the contents of a bunch of data. The MD5 checksum spits out 16 bytes of essentially random data. While this is great for computers, humans don't want to look at a huge hex string. The emoji checksum calculator spits out 4 emoji character hash.

The caclulator uses 845 different emoji characters for a total of 509,831,700,625 unique hash codes. Good enough.

