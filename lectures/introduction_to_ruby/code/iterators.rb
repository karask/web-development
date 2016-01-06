numbers = (1..10)

puts numbers.include?(1)

even = []
numbers.each { |n| even << n if n.even? }

odd = numbers.select { |n| n.odd? }

even_squares = even.map { |n| n ** 2 }

odd_squares = numbers.reject { |n| n.even? }.map! { |n| n ** 2 }

puts odd_squares.to_s

# Output: 
# true
# [1, 9, 25, 49, 81]
