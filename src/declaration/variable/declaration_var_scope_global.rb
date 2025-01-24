# frozen_string_literal: true

$hello = 'world'

puts $hello #=> Success!

def call_hello
  puts $hello #=> Success!
end

call_hello #=> Success!