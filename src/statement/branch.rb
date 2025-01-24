# frozen_string_literal: true

num = 10
case num
in 1..10
  puts "It's 10!!"
end

# case 대상 없이 가능
case
when num == 10
  puts "It's 10!!"
end

# 영역 분기 가능
case num
when 1..5
  puts "It's between 1 and 5!!"
when 6..10
  puts "It's between 6 and 10!!"
when String
  "It's String Type!!"
when Integer
  "It's Integer Type!!" #=> when 6..10 만 실행되고 종료
else
  "I don't know what it is"
end


score = 70
result = case score
         when 0..40 then "Fail"
         when 41..60 then "It's Grade C"
         when 61..70 then "It's Grade B"
         when 71..100 then "It's Grade A"
         else "Invalid Score"
         end

puts result