#!/usr/bin/env ruby
#anagram
puts "Anagram: A word whose characters can be re-positioned to form another word; e.g. 'Cinema' -> 'Iceman"
puts "Enter two words to see if they're anagrams:"

if ARGV.empty?
  puts "\nYou need to enter a word like: 'ruby anagram.rb Cinema'."
  puts "...but no word entered.  So I'm quitting.\n\n"
  exit 0
end

if (ARGV.count < 2)
  puts "I need two words entered. So I'm quitting.\n\n"
  exit 0
end

if (ARGV[0].upcase.split("").uniq.sort.join() == ARGV[1].upcase.split("").uniq.sort.join()) 
  puts "\n Yes! #{ARGV[0]} and #{ARGV[1]} are anagrams."
else 
   puts "\n No. they're not anagrams."
end
  
