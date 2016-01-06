class Thing
  attr_accessor :name, :description

  def initialize options={}
    @name = options[:name]
    @description = options[:description] || "No description"
  end
end

sword = Thing.new :name => "Sword",
                  :description => "A longsword." 

bow = Thing.new :name => "Bow"

p sword  #<Thing:0x.. @name="Sword", @description="A longsword.">
p bow    #<Thing:0x.. @name="Bow", @description="No description">
