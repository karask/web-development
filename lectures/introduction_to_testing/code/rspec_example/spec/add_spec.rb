# add_spec.rb
require_relative "../lib/add.rb"

describe "add function" do
  it "adds two numbers" do
    add(2,3).should == 5
  end
end
