require 'minitest/autorun'
require 'minitest/pride'
require '../lib/card'
require '../lib/guess'
require 'pry'

class GuessTest < Minitest::Test

  def test_it_exist
    card  = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess

  end

  def test_it_has_card
    card  = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal card, guess.card
  end

  def test_it_response
    card  = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_it_correct?
    card  = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal true, guess.correct?
  end

  def test_it_feedback
    card  = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts",card)
    assert_equal "Correct!", guess.feedback
  end

  def test_it_feedback_incorrect
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal card, guess.card
    assert_equal false, guess.correct?
    assert_equal "Incorrect!", guess.feedback
  end

end
