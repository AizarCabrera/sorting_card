require '../lib/card'
require '../lib/guess'
require '../lib/deck'
require 'pry'

class Round
  attr_reader :round

  def initialize(deck)
    @deck =deck
  end


end
