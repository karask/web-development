# encoding: utf-8
class Post < Sequel::Model
  many_to_one :author
end
