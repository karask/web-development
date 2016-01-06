class Thing
  @@num_of_things = 0

  def initialize
    @@num_of_things += 1
  end

  def self.num_of_things
    @@num_of_things
  end
end

t1 = Thing.new
t2 = Thing.new

puts Thing.num_of_things

class Treasure < Thing
  @@num_of_things = 0

  def initialize
    @@num_of_things += 1
  end

  def self.num_of_things
    @@num_of_things
  end
end

tr1 = Treasure.new
puts Treasure.num_of_things
puts Thing.num_of_things
