1.step(9, 2) do |count|
  puts "#{count} situp"
  puts "#{count} pushup"
  puts "#{count} chinup"
end

# Convert the following code from a multi-line block to a single-line block.

# 1.upto(10) do |count|
#   puts "#{count} alligator"
# end

1.upto(10) { |count| puts "#{count} alligator" }

# In the example below, the value of the method parameter is ________. (5)

# 1.upto(5) do |count|
#   puts "#{count} situps"
#   puts "#{count} pushups"
#   puts "#{count} chinups"
# end

# In the example above, the block parameter is ________ and it is a ________ variable
# 'count' is a block local variable scoped at the block level
