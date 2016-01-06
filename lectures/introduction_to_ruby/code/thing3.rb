class Thing
  attr_accessor :name, :description

  def initialize( options={} )
    default = { :name => "A thing", 
                :description => "No description" }
    options = default.merge(options)

    @name = options[:name]
    @description = options[:description]
  end
end

class Weapon < Thing
  attr_accessor :damage

  def initialize( options={} )
    default = { :damage => 0 }
    options = default.merge(options)

    @damage = options[:damage]
    super(options)
  end
end

p Weapon.new :name => "Sword", :damage => 10
