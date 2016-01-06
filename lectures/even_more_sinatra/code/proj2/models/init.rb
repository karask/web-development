# encoding: utf-8

DB = Sequel.sqlite('db/tblog.db')

require_relative 'posts'
require_relative 'comments'
