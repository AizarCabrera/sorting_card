require 'minitest/autorun'
require 'minitest/pride'
require '../lib/card'
require '../lib/deck'
require '../lib/guess'
require '../lib/round'
require 'pry'


class RoundTEst < Minitest::Test

   def test_it_exist
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     assert_instance_of Round, round
   end

   def test_it_has_acces_deck
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     assert_equal deck, round.deck
   end

   def test_it_have_guesses
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     assert_equal [], round.guesses
   end

   def test_it_current_card
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     assert_equal card_1, round.current_card
   end

   def test_it_record_guess
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     #guess  = Guess.new("3 of Hearts",card_1)
     # assert_instance_of Guess,round.record_guess({value:"3", suit:"Hearts"})
     # assert_equal guess_string,round.guesses.response
     guess  = Guess.new("3 of Hearts",card_1)
     assert_equal guess,round.record_guess({value:"3", suit:"Hearts"})

   end

   def test_it_guesses_count
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     guess  = Guess.new("3 of Hearts",card_1)
     assert_equal 1, round.guesses.count
   end




end



# round.guesses.count
# => 1
# round.guesses.first.feedback
# => "Correct!"
# round.number_correct
# => 1
# round.current_card
# => #<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">
# round.record_guess({value: "Jack", suit: "Diamonds"})
# => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">, @response="Jack of Diamonds">
# round.guesses.count
# => 2
# round.guesses.last.feedback
# => "Incorrect."
# round.number_correct
# => 1
# round.percent_correct
# => 50
