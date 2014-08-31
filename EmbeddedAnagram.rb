#!/usr/bin/env ruby
#anagram2
puts "Anagram: A word whose characters can be re-positioned to form another word; e.g. 'Cinema' -> 'Iceman"
puts "Enter two words, the first being a pattern of charactors, the second being any large chunk of characters.\n"
puts ""
puts "Example: enter 'kitty' & 'JunkLettersLikeytkitandEtc.' to see if 'kitty' mix is in there. "

if ARGV.empty?
  puts "\nYou need to enter a word like: 'ruby anagram.rb kitty, bullshit'."
  puts "...but no word entered.  So I'm quitting.\n\n"
  exit 0
end

if (ARGV.count < 2)
  puts "I need two words entered. So I'm quitting.\n\n"
  exit 0
end

if (ARGV[1].length < ARGV[0].length)
  puts "The second argument is smaller than the first.  So I'm guitting.\n\n"
  exit 0
end

# ---------------------------------------------------------------
# get the sorted pattern string ready:
patternString = ARGV[0].split('').sort.join().upcase()
puts "\n You had entered: '#{ARGV[0]}' and '#{ARGV[1]}'."

stockString = ARGV[1]

limit = (stockString.length - patternString.length)

match = false

0.upto(limit) do |k|
  x = stockString[k,patternString.length].upcase.split('').sort().join()
 # print "#{patternString}, #{x}\n"
  if (patternString == x) 
    match = true
    break
  end
end

if (match)
  puts "\n *** We got an embedded anagram! ***\n\n"
else
  puts "\n ...Nope. No embedded anagram.\n\n"
end




