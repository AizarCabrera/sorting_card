require '../lib/card'
require 'pry'

class Deck

attr_reader :count,
            :cards,
            :value,
            :suit

  def initialize(cards)
    @count = cards.count
    @cards = cards
    @value = value
    @suit  = suit
  end


  def card_value
  cards_hash=
        {
        "2"      => 1,
         "3"     => 5,
         "4"     => 9,
         "5"     => 13,
         "6"     => 17,
         "7"     => 21,
         "8"     => 25,
         "9"     => 29,
         "10"    => 33,
         "Jack"  => 37,
         "Queen" => 41,
         "King"  => 45,
         "Ace"   => 49,
        }


  suit_hash=
        {
        "Clubs"   => 10,
        "Diamonds"=> 20,
        "Hearts"  => 30,
        "Spades"  => 40
        }


  card_value = cards_hash[@value] + suit_hash[@suit]
 end


 def sort
     card_array = cards

     loop do
       swap = false

       (card_array.length - 1).times do |card|
       if card_array[card].card_value > card_array[card + 1].card_value
         card_array[card], card_array[card + 1] = card_array[card + 1], card_array[card]

         swap = true
       end
     end

     break if not swap

    return card_array
  end
 end
end
