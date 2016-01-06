# init_db.rb
require 'sequel'

DB = Sequel.sqlite('db/users.db')

DB.create_table :users do
    primary_key :id
    String :name
    Integer :age
end
