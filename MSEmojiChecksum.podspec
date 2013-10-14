Pod::Spec.new do |s|
  s.name         = "MSEmojiChecksum"
  s.version      = "0.0.2"
  s.summary      = "Calculate checksums that are human readable and fun! 🍌🙆🚽"

  s.description  = <<-DESC
                   Checksums are a useful way to quickly check the contents of a bunch of data. The MD5 checksum spits out 16 bytes of random numbers. While this is great for computers, humans don't want to look at a huge hex string. The emoji checksum calculator spits out 4 emoji character hash. 

                   The caclulator uses 845 different emoji characters for a total of 509,831,700,625 unique hash codes. Good enough.
                   DESC

  s.homepage     = "https://github.com/mindsnacks/MSEmojiChecksumCalculator"


  s.license      = 'MIT'
  

  s.author       = { "Jacob Eiting" => "jacob.eiting@gmail.com" }

  s.source       = { :git => "https://github.com/mindsnacks/MSEmojiChecksumCalculator.git", :tag => "0.0.2" }

  s.source_files  = '*.{h,m}'
  s.public_header_files = '*.h'
  s.framework  = 'CommonCrypto'
  

end
