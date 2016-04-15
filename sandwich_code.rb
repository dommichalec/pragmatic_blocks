def tag(value)
  print "<#{value.to_s}>"
  print yield
  print "</#{value.to_s}>"
  puts ""
end

tag(:h4) { "Breaking news!" }

def with_debugging
  puts "Got here!"
  result = yield
  puts "Result was #{result}"
end

def with_expectation(expected_value)
  result = yield
  puts "Running test for #{expected_value} against #{yield}"
  expected_value == result ? "PASSED" : "FAILED"
end

puts with_expectation(4) { 2 + 2 }
