# encoding: utf-8
# init.rb
DB = Sequel.sqlite('db/tasks.db')

require_relative 'tasks'
