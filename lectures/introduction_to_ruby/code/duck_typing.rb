class Duck
  def quack
    "quack!"
  end
end

class Person
  def quack
    "make quack sound"
  end
end

d = Duck.new
p = Person.new

[d, p].each do |obj|
  puts obj.quack
end
