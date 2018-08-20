require '../lib/card'
require '../lib/guess'
require '../lib/deck'
require 'pry'

class Round
  attr_reader :deck,
              :round,
              :guesses,
              :current_card,
              :current_card_index
:number_correct

  def initialize(deck)
    @deck    = deck
    @guesses = []
    @number_correct = 0
    @current_card_index = 0
  end

   def current_card
    @deck.cards.first
   end

  def record_guess(response)
    # guess_string= "#{response[:value]} of #{response[:suit]}"
    # @guesses = Guess.new(guess_string,current_card)
    # if response[:value]==current_card.value && response[:suit]==current_card.suit
    #   @number_correct += 1
    # end
    #   @current_card_index += 1
    # @guesses
  # binding.pry
#   guess_string= "#{response[:value]} of #{response[:suit]}"
#     guesses = Guess.new(guess_string,current_card)
    @guesses << Guess.new(response,current_card)
  end


end
