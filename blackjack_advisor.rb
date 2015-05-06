#checks a given value and turns it into a coresponding integer or makes the user
#enter a new value if the value entered isnt allowed than returns the value
def optimizer(given)
  optimized = false
end

#adds the two cards and returns thier total
def adder(first, second)
  total = 0
  return total
end

#determins whether a players hand is hard, soft, or a pair
def hand_type()
end

pair = {2 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",7 => "p",8 => "h",
  9 => "h",10 => "h","a" => "h"}, 3 => {2 => "p", 3 => "p",4 => "p",5 => "p",
  6 => "p",7 => "p",8 => "p",9 => "h",10 => "h","a" => "h"},4 => { 2 => "h",
  3 => "h",4 => "p",5 => "p",6 => "p",7 => "h",8 => "h",9 => "h",10 => "h",
  "a" => "h"},5 => { 2 => "Dh", 3 => "Dh",4 => "Dh",5 => "Dh",6 => "Dh",7 => "Dh",
  8 => "Dh",9 => "Dh",10 => "h", "a" => "h"},6 => { 2 => "p", 3 => "p",4 => "p",
  5 => "p",6 => "p",7 => "p",8 => "h",9 => "h",10 => "h", "a" => "h"},
  7 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",7 => "p",8 => "p",9 => "h",
  10 => "s", "a" => "h"},8 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",
  7 => "p",8 => "p",9 => "p",10 => "p", "a" => "p"},9 => { 2 => "p", 3 => "p",
  4 => "p",5 => "p",6 => "p",7 => "s",8 => "p",9 => "p",10 => "s", "a" => "s"},
  10 => { 2 => "s", 3 => "s",4 => "s",5 => "s",6 => "s",7 => "s",8 => "s",9 => "s",
  10 => "s", "a" => "s"},"a" => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",
  7 => "p",8 => "p",9 => "p",10 => "p", "a" => "p"}}
soft = {}
hard = {}

puts "Please enter your first card:"
first_card = gets.chomp
puts "Please tner your second card:"
second_card = gets.chomp
puts "Please enter the dealer's card:"
dealers_card = gets.chomp
