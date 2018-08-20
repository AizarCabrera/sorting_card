require '../lib/card'
require 'pry'

class Deck

attr_reader :count,
            :cards

  def initialize(cards)
    @count = cards.count
    @cards = cards
  end
# binding.pry
end
