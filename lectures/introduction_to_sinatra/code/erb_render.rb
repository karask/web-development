require 'erb'

name = "Kostas"
template = "My name is <%= name %>."

renderer = ERB.new(template)
puts renderer.result()
