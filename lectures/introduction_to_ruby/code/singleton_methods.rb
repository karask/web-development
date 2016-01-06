aragorn = Person.new
legolas = Person.new

def aragorn.aka
  "Strider"
end

aragorn.aka
# => "Strider"

legolas.aka
# => NoMethodError: undefined method `aka' ...
