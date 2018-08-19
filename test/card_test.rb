require 'minitest/autorun'
require 'minitest/pride'
require '../lib/sorting_cards'
require 'pry'

class CardTest < Minitest::Test

  def test_it_exist
    card = Card.new("Ace","Spades")
    assert_instance_of Card, card
  end

  def test_is_has_value_and_suit
    card = Card.new("Ace","Spades")
    assert_equal "Ace",card.value
    assert_equal "Spades",card.suit
  end

end
