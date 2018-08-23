require 'minitest/autorun'
require 'minitest/pride'
require '../lib/guess'
require '../lib/card'
require "../lib/deck"
require 'pry'

class DeckTest< Minitest::Test

  def test_it_exist
   card_1 = Card.new("3", "Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5","Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   assert_instance_of Deck, deck
  end

  def test_it_has_cards
   card_1 = Card.new("3", "Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5","Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_it_count
   card_1 = Card.new("3", "Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5","Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   assert_equal 3, deck.count

  end


  def test_it_sort
   card_1 = Card.new("3", "Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5","Diamonds")
   deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
   assert_equal [card_1, card_3, card_2, card_5, card_4], deck.sort

  end


end
