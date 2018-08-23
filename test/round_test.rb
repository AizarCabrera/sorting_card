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
     # binding.pry
     assert_instance_of Guess, round.record_guess({value:"3", suit:"Hearts"})
     assert_equal "3 of Hearts", round.guesses.last.response
    end

   def test_it_guesses_count
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     guess  = Guess.new("3 of Hearts",card_1)
     round.record_guess({value:"3", suit:"Hearts"})
     assert_equal 1, round.guesses.count
   end

   def test_it_can_guess_first_feedback
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     guess  = Guess.new("3 of Hearts",card_1)
     round.record_guess({value:"3", suit:"Hearts"})
     round.record_guess({value: "Jack", suit: "Diamonds"})
     assert_equal "Correct!", round.guesses.first.feedback
   end

   def test_it_number_correct
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     guess  = Guess.new("3 of Hearts",card_1)
     round.record_guess({value:"3", suit:"Hearts"})
     assert_equal 1, round.number_correct
   end

   def test_it_wrong_card
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     guess  = Guess.new("3 of Hearts",card_1)
     round.record_guess({value: "Jack", suit: "Diamonds"})
     assert_equal "Incorrect!", round.guesses.last.feedback
   end

   def test_it_percent_correct
     skip
     card_1 = Card.new("3","Hearts")
     card_2 = Card.new("4", "Clubs")
     deck   = Deck.new([card_1, card_2])
     round  = Round.new(deck)
     round.record_guess({value:"3", suit:"Hearts"})
     round.record_guess({value: "Jack", suit: "Diamonds"})
     assert_equal 50, round.percent_correct
   end


end
