require 'sequel'

DB = Sequel.sqlite('db/users.db')

class User < Sequel::Model
end
