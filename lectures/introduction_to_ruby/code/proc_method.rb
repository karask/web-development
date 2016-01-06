def my_method
  puts "before proc"
    my_proc = Proc.new do
      puts "inside proc"
      return
    end
    my_proc.call
    puts "after proc"
end
 
my_method

# Output:
# before proc
# inside proc
