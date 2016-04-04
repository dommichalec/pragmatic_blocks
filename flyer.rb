# flyer class
class Flyer
  attr_reader(:name, :email, :miles_flown)

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |n|
  flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", "#{n * 1000}")
end

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

total_miles_flown = 0
flyers.each do |f|
  total_miles_flown += f.miles_flown.to_i
end
puts "Total miles flown: #{total_miles_flown}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each do |airline, percentage|
  puts "Earn #{percentage}x miles by flying #{airline}!"
end
