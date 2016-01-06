def say( what, *people )
  people.each { |person| puts "#{what} #{person}!" }
end

say "Hi", "Kostas", "Alex"
