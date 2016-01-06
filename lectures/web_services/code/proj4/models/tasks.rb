# encoding: utf-8
# tasks.rb
class Task < Sequel::Model
  
  def to_json
    {
      "id" => self.id,
      "description" => self.description
    }.to_json
  end

end
