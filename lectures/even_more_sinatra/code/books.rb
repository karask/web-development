# encoding: utf-8
class Book < Sequel::Model
  many_to_many :authors
end
