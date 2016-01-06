class Circle
  PI = 3.1415926535

  def initialize( radius )
    @radius = radius
  end

  def circumference
    @radius * 2 * PI
  end
end

c = Circle.new( 5 )
printf(  "Circumference is %.2f\n", c.circumference )

puts "PI is #{Circle::PI}"

# Circumference is 31.42
# PI is 3.1415926535
