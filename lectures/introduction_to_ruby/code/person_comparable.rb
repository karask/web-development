class Person
  include Comparable

  attr_accessor :name

  def initialize name
    @name = name
  end

  def to_s; "#{@name}"; end

  def <=>(other)
    @name <=> other.name
  end
end

p1 = Person.new( "Kostas" )
p2 = Person.new( "Alex" )
p3 = Person.new( "Dave" )

if p1 > p2
  puts "Yep, K > A"
end

puts [p1, p2, p3].sort
