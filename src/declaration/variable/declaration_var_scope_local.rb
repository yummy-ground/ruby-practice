# frozen_string_literal: true

hello = 'world'

puts hello #=> Success!

def call_hello
  puts hello #=> Error!
end

call_hello #=> Error!