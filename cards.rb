
#from coffee + code

suits.each do |suit|
  numbers.each do |number|
    cards << [suit, number]
  end
end
puts cards.inspect
