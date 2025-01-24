# frozen_string_literal: true

def is_even(number)
  unless number % 2 == 0 # => 조건이 거짓일때
    return false
  else # => unless 조건이 참일때
    return true
  end
end

def is_odd(number)
  return number.odd?
end

def say_hello_to(name)
  puts "Hello, #{name}"
end

puts is_even(10)
puts is_odd(11)
say_hello_to("Donggyu")

