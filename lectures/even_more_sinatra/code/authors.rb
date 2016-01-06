# encoding: utf-8
class Author < Sequel::Model
  many_to_many :books
end
