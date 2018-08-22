require '../lib/card'
require '../lib/guess'
require '../lib/deck'
require 'pry'

class Round
  attr_reader :deck,
              :round,
              :guesses,
              :current_card,
              :record_guess
              :percent_correct
              :number_correct_index
  def initialize(deck)
    @deck               = deck
    @guesses            = []
    @number_correct_index = 0
  end

  def current_card
    @deck.cards[@number_correct_index]
  end

  def record_guess(response_hash)
    response ="#{response_hash[:value]} of #{response_hash[:suit]}"
     guess = Guess.new(response,current_card)
     @guesses << guess
     return guess
      binding.pry
  end

  def number_correct

     # number_correct_index = 0
     @guesses.each do |guess|
     @number_correct_index +=1 if guess == "Correct!"
     end
     @number_correct_index


  end

  def percent_correct
# binding.pry
     (number_correct.to_f/@guesses.count)*100

  end



end
