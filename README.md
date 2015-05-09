# Blackjack Advisor

Blackjack Advisor is a program that, given your current hand, and the dealer's card, will tell you what it believes is the best move for you to make.

## How It Works

Blackjack Advisor will assume the following rules hold true.

* One deck is in in play
* The dealer stands on soft 17's
* Surrendering is not allowed
* The dealer peeks for blackjack
* There are only two players
* The hands being entered are the first cards to be played

Once the hands have been entered, Blackjack Advisor will scan a list of optimal moves for the combination of cards it was given, and return move matching that combination.
It will close after telling you this move.

## How To Use Blackjack Advisor

Once the program is opened, It will ask for you to enter three things.

* Your first card
* Your second card
* The dealer's front card

### How to enter cards

This program will only accept numerical values for all cards with the exception of the ace. These values are as follows.

* Cards with values 2-10 should be entered by thier given values
* Kings(K), Queens(Q), and Jacks(J) should all be entered as 10.
* Aces should be entered by the lowercase letter a.
