#checks a given value and turns it into a coresponding integer or makes the user
#enter a new value if the value entered isnt allowed than returns the value
def optimizer(given)


end

#determins whether a players hand is hard, soft, or a pair
def hand_type(first, second)
  if first == second
    return "pair"
  elsif ((first == 11 ^ second == 11)
    return "soft"
  else
    return "hard"
  end
end

# a = hash.new("hit")
# a ["turner"] will give "hit"

# AHAHAHAHAHAHA
pair = {2 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",7 => "p",8 => "h",
  9 => "h",10 => "h",11 => "h"}, 3 => {2 => "p", 3 => "p",4 => "p",5 => "p",
  6 => "p",7 => "p",8 => "p",9 => "h",10 => "h",11 => "h"},4 => { 2 => "h",
  3 => "h",4 => "p",5 => "p",6 => "p",7 => "h",8 => "h",9 => "h",10 => "h",
  11 => "h"},5 => { 2 => "Dh", 3 => "Dh",4 => "Dh",5 => "Dh",6 => "Dh",7 => "Dh",
  8 => "Dh",9 => "Dh",10 => "h",11 => "h"},6 => { 2 => "p", 3 => "p",4 => "p",
  5 => "p",6 => "p",7 => "p",8 => "h",9 => "h",10 => "h",11 => "h"},
  7 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",7 => "p",8 => "p",9 => "h",
  10 => "s",11 => "h"},8 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",
  7 => "p",8 => "p",9 => "p",10 => "p",11 => "p"},9 => { 2 => "p", 3 => "p",
  4 => "p",5 => "p",6 => "p",7 => "s",8 => "p",9 => "p",10 => "s",11 => "s"},
  10 => { 2 => "s", 3 => "s",4 => "s",5 => "s",6 => "s",7 => "s",8 => "s",9 => "s",
  10 => "s",11 => "s"},11 => { 2 => "p", 3 => "p",4 => "p",5 => "p",6 => "p",
  7 => "p",8 => "p",9 => "p",10 => "p", 11 => "p"}}

#credit goes to anna who helped john with this funtion
# had so much trouble understanding how to do this until
# i figured out that a key has to currently exist befor
# altering the value attached to that key
#so ile use this to fill the hash with all the player values
#Thanks mason for that default advice at the end of the day
#it was the key to getting this
hard = {}

(5..21).each {|n| hard[n] = Hash.new("h")}
[5,6].each {|n| hard [8][n] = 'Dh'}
(2..6).each {|n| hard[9][n] = "Dh"}
(2..9).each {|n| hard[10][n] = "Dh"}
(4..6).each {|n| hard[12][n] = "s"}
(13..16).each {|n| (2..6).each {|a| hard[n][a] = "s"}}
(17..21).each {|n| hard[n] = Hash.new("s")}
hard[11] = Hash.new("Dh")
#p hard
#p hard[11][8]

soft = {}
(13..21).each {|n| soft[n] = Hash.new("s")}
(13..16).each {|n| [2,6].each {|a| soft[n][a] = "h"}}
(13..17).each {|n| (7..11).each {|a| soft[n][a] = "h"}}
(13..17).each {|n| (4..6).each {|a| soft[n][a] = "Dh"}}
[2,3].each {|n| soft[17][n] = "Dh"}
(3..6).each {|n| soft[18][n] = "Ds"}
[9,10].each {|n| soft[18][n] = "h"}
soft[19][6] = "Ds"

puts "Please enter your first card:"
first_card = gets.chomp
  if first_card == "a"
    first_card = 11
  end
puts "Please tner your second card:"
second_card = gets.chomp
  if second_card == "a"
    second_card = 11
  end
puts "Please enter the dealer's card:"
dealer_card = gets.chomp
  if dealer_card = "a"
    dealer_card = 11
optimal_move = hand_type(first_card, second_card)
