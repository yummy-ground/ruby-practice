# frozen_string_literal: true

puts 1 == 2 #=> false
puts 'a' == "a" #=> true
puts ['a', 'b', 'c'] == ["a", "b", "c"] #=> true
puts ['a', 1, nil] == ["a", 1, nil] #=> true
puts

puts 1 != 2 #=> true
puts 'a' != "a" #=> false
puts

puts 1 < 2 #=> true
puts 1.5 < 1.5 #=> false
puts 'a' < "a" #=> false
puts 'a' < 'b' #=> true
puts

puts 1 <= 2 #=> true
puts 1.5 <= 1.5 #=> true
puts 'a' <= "a" #=> true
puts 'a' <= 'b' #=> true
puts

puts 1 >= 2 #=> false
puts 1.5 >= 1.5 #=> true
puts 'a' >= 'a' #=> true
puts 'a' >= 'b' #=> false