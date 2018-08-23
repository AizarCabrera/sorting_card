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


#
#    def sort
#    value_rank {"2"=>1, "3"=>5, "4"=>9}
#
#    suit_rank {"Clubs"=>0, "Diamonds"=>1, "Hearts"=>2, "Spades"=>3 }
#    end
#
end
