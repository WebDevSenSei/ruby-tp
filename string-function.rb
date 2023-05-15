puts "%05d" % 123
puts "%5s: %03x" % ["ID", self.object_id]
puts "my last name is %{lastname}" % { :firstname => "Sora", :lastname => "Arai" }

puts '-----------------------------'

puts "ha " * 3

puts '-----------------------------'

puts "Hello from " + self.to_s

puts '-----------------------------'

string = "qweqwe"
string = string.freeze
puts +string
puts -string

puts '-----------------------------'

string = "helklo"
string << " world"
puts string
string << 21
puts string

puts '-----------------------------'

puts "abcdef" <=> "ABCDEF"
puts "abcdef" <=> "abcdefg"

puts '-----------------------------'

puts "abc" == "ABC"
puts "abc" == "abc"
puts 123 == "123"

puts '-----------------------------'

puts string << "21"
puts string =~ /\d/

puts '--------------string[/[aeiou](.)\1/]---------------'

puts string[/[aeiou](.)\1/]
puts string[/[aeiou](.)\1/, 0]
puts string[/[aeiou](.)\1/, 1]
puts string[/[aeiou](.)\1/, 2]

puts '-----------------------------'

puts "\u3042".bytesize

puts '-----------------------------'

str = "こんにちは"
puts str[0,6]
puts str.byteslice(0,6)

puts '-----------------------------'

puts "hello".capitalize    #=> "Hello"
puts "Hello".capitalize    #=> "Hello"
puts "Hello".capitalize!   #=> "Hello"
puts "hello".capitalize!   #=> "Hello"

puts '-----------------------------'

puts "hello".casecmp('HeLLO')
puts "hello".casecmp?('HeLLO')

puts '-----------------------------'

puts "hello".center(20, '123')

puts '-----------------------------'

puts "hello".chars

puts '-----------------------------'

tempstring = "hello"
puts tempstring.chomp("llo") 
puts tempstring.chop
puts tempstring.chr
puts tempstring.codepoints
puts tempstring.concat(" ", "world", " !!!")

puts '-----------------------------'

puts tempstring.count "!lo", "!"
puts tempstring.count "^helloworld !"
puts tempstring.count "en\\-p"

puts '-----------------------------'

puts "foos".crypt('sd')

puts '-----------------------------'

tempstring.each_byte { |c| puts c, ':', c.chr }
tempstring.each_char { |c| puts c, ' ' }

puts '-----------------------------'

puts tempstring.gsub(/[aeiou]/, '*')
puts tempstring.gsub(/([aeiou])/, '<\1>')

puts '-----------------------------'

puts tempstring.include? "lol"
puts tempstring.include? "loo"
puts tempstring.include? "llo"
puts tempstring.include? ?x

puts '------------index-----------------'

puts tempstring.index('e')
puts tempstring.index('or')
puts tempstring.index(?x)
puts tempstring.index('x')
puts tempstring.index('l', 5)

puts '--------------replace & insert---------------'

puts tempstring.insert(3, 'X')
puts tempstring.replace("Hello World!!!")

puts tempstring.inspect
puts "kl".intern
s = 'cat'.to_sym
puts s == :cat

puts '--------------replace & insert---------------'

puts tempstring.ljust(20).inspect
puts tempstring.rjust(20)
puts tempstring.lstrip
puts tempstring.rstrip.inspect
puts '--------------succ---------------'

puts tempstring.succ

puts '--------------ord---------------'
puts tempstring.ord

puts '--------------partition---------------'

puts tempstring.partition("l")
puts tempstring.rpartition("l")
puts tempstring.partition("x")
puts tempstring.partition("!")
puts "---------"
puts tempstring.partition(/....l/)

puts "abc\u3042\x81".scrub
# puts tempstring.setbyte(1, 10)
puts tempstring.inspect

puts '--------------split---------------'

puts tempstring.split('o')

puts '--------------squeeze---------------'

puts tempstring.squeeze
puts tempstring.squeeze "a-z" "!"

puts '--------------sub---------------'

puts tempstring.sub(/[aeiou]/, '*')
puts tempstring.sub(/([aeiou])/, '<\1>')

puts '--------------to_c---------------'

puts '2.5'.to_c
puts "123.45e1".to_f 
puts "1100101".to_i(2)        #=> 101
puts "123/12".to_r


puts tempstring.tr('l', 'x')
puts tempstring.tr_s('l!', 'x')
puts tempstring.dump
puts "\"hello \\n ''\"".undump

puts '--------------upto---------------'

"a80".upto("b10") {|s| print s, ' ' }
"a80".upto("b10") {|s| print s, ' ' }
