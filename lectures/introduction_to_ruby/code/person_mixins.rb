require_relative "my_logger"

class Person
  include MyLogger
  attr_accessor :name

  def initialize name
    debug "Inside init!" 
    @name = name
  end
end

p = Person.new( "10" )
