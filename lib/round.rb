require '../lib/card'
require '../lib/guess'
require '../lib/deck'
require 'pry'

class Round
  attr_reader :deck,
              :round,
              :guesses,
              :current_card

  def initialize(deck)
    @deck    = deck
    @guesses = []
  end

   def current_card
    @deck.cards.first
   end

  def record_guess(response)
    @guesses << Guess.new(response,current_card)
  end

end
