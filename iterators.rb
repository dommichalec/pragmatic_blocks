# method definition
def three_times
  counter = 0
  1.upto(3) do
    yield(counter + 1)
    counter += 1
  end
end

# method invocation
three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

# method definition
def n_times(number)
  1.upto(number) do |count|
    yield(count)
  end
end


# method invocation
n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
