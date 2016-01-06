class Thing
  def name
    @name
  end

  def name=( str )
    @name = str
  end
end

t = Thing.new 
t.name = "Sword"

puts t                  #<Thing:0x000000012fd0e0>
puts t.inspect          #<Thing:0x000000012fd0e0 @name="Sword">
