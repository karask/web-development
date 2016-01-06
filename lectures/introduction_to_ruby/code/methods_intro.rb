def power( a, n=1 )
  a ** n
end

def divide( a, b )
  return a / b, a % b
end

puts power 5, 2
puts power( 3 )

d, m = divide 5, 2
puts "Result is #{d} and modulo is: #{m}"
