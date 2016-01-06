require 'haml'

name = 'Kostas'
template = 'My name is #{name}.'

engine = Object.new
Haml::Engine.new(template).def_method(engine, :render, :name)
puts engine.render(:name => name)
