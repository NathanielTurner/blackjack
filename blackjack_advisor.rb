#checks a given value and turns it into a coresponding integer or makes the user
#enter a new value if the value entered isnt allowed than returns the value
def optimizer(given)


end

#determins whether a players hand is hard, soft, or a pair
def hand_type(first, second)
  if first == second
    return "pair"
  elsif ((first.to_i == 11) ^ (second.to_i == 11))
    return "soft"
  else
    return "hard"
  end
end

# a = hash.new("hit")
# a ["turner"] will give "hit"

# AHAHAHAHAHAHA
pair = {2 => { 2 => "split", 3 => "split",4 => "split",5 => "split",6 => "split",7 => "split",8 => "hit",
  9 => "hit",10 => "hit",11 => "hit"}, 3 => {2 => "split", 3 => "split",4 => "split",5 => "split",
  6 => "split",7 => "split",8 => "split",9 => "hit",10 => "hit",11 => "hit"},4 => { 2 => "hit",
  3 => "hit",4 => "split",5 => "split",6 => "split",7 => "hit",8 => "hit",9 => "hit",10 => "hit",
  11 => "hit"},5 => { 2 => "Double if possible, otherwise Hit", 3 => "Double if possible, otherwise Hit",4 => "Double if possible, otherwise Hit",5 => "Double if possible, otherwise Hit",6 => "Double if possible, otherwise Hit",7 => "Double if possible, otherwise Hit",
  8 => "Double if possible, otherwise Hit",9 => "Double if possible, otherwise Hit",10 => "hit",11 => "hit"},6 => { 2 => "split", 3 => "split",4 => "split",
  5 => "split",6 => "split",7 => "split",8 => "hit",9 => "hit",10 => "hit",11 => "hit"},
  7 => { 2 => "split", 3 => "split",4 => "split",5 => "split",6 => "split",7 => "split",8 => "split",9 => "hit",
  10 => "stand",11 => "hit"},8 => { 2 => "split", 3 => "split",4 => "split",5 => "split",6 => "split",
  7 => "split",8 => "split",9 => "split",10 => "split",11 => "split"},9 => { 2 => "split", 3 => "split",
  4 => "split",5 => "split",6 => "split",7 => "stand",8 => "split",9 => "split",10 => "stand",11 => "stand"},
  10 => { 2 => "stand", 3 => "stand",4 => "stand",5 => "stand",6 => "stand",7 => "stand",8 => "stand",9 => "stand",
  10 => "stand",11 => "stand"},11 => { 2 => "split", 3 => "split",4 => "split",5 => "split",6 => "split",
  7 => "split",8 => "split",9 => "split",10 => "split", 11 => "split"}}

#credit goes to anna who helped john with this funtion
# had so much trouble understanding how to do this until
# i figured out that a key has to currently exist befor
# altering the value attached to that key
#so ile use this to fill the hash with all the player values
#Thanks mason for that default advice at the end of the day
#it was the key to getting this
hard = {}

(5..21).each {|n| hard[n] = Hash.new("hit")}
[5,6].each {|n| hard [8][n] = "Double if possible, otherwise Hit"}
(2..6).each {|n| hard[9][n] = "Double if possible, otherwise Hit"}
(2..9).each {|n| hard[10][n] = "Double if possible, otherwise Hit"}
(4..6).each {|n| hard[12][n] = "stand"}
(13..16).each {|n| (2..6).each {|a| hard[n][a] = "stand"}}
(17..21).each {|n| hard[n] = Hash.new("stand")}
hard[11] = Hash.new("Double if possible, otherwise Hit")
#p hard
#p hard[11][8]

soft = {}
(13..21).each {|n| soft[n] = Hash.new("stand")}
(13..16).each {|n| [2,6].each {|a| soft[n][a] = "hit"}}
(13..17).each {|n| (7..11).each {|a| soft[n][a] = "hit"}}
(13..17).each {|n| (4..6).each {|a| soft[n][a] = "Double if possible, otherwise Hit"}}
[2,3].each {|n| soft[17][n] = "Double if possible, otherwise Hit"}
(3..6).each {|n| soft[18][n] = "Double if possible, otherwise Stand"}
[9,10].each {|n| soft[18][n] = "hit"}
soft[19][6] = "Double if possible, otherwise Stand"

puts "Please enter your first card:"
first_card = gets.chomp
  if first_card == "a"
    first_card = 11
  end
puts "Please enter your second card:"
second_card = gets.chomp
  if second_card == "a"
    second_card = 11
  end
puts "Please enter the dealer's card:"
dealer_card = gets.chomp
  if dealer_card == "a"
    dealer_card = 11
  end
answer = ""
type = hand_type(first_card, second_card)
total = first_card.to_i + second_card.to_i
if type == "pair"
  answer = pair[first_card.to_i][dealer_card.to_i]
  puts "your best bet is to #{answer}."
elsif type == "hard"
  answer = hard[total][dealer_card.to_i]
  puts "your best bet is to #{answer}."
else
  answer = soft[total][dealer_card.to_i]
  puts "your best bet is to #{answer}."
end
