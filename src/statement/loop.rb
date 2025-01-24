# frozen_string_literal: true

num = 0
while num <= 10
  if num % 2 == 0
    puts num
  end
  num += 1
end

# .. -> 끝 수 포함
# ... -> 끝 수 제외
for num in 1..10 # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  puts num
end

for num in 1...10 # [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts num
end


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for num in arr
  puts num
end


$num = 0
def increase
  puts $num
  $num += 1
end

5.times { increase }
