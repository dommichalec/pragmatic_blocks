# method definition

def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  if block_given?
    score = yield(random_face, random_suit)
    puts "You scored a #{score}!"
  else
    puts "No score!"
  end
end

# method invocation

deal do |face, value|
  puts "Delt a #{face} of #{value}"
  face.size + value.size
end
