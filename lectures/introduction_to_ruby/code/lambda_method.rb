def my_method
  puts "before proc"
  my_proc = lambda do
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
# after proc
