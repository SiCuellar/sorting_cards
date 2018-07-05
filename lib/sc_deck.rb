require "pry"
require "./lib/sc_card_class.rb"
require "./lib/sc_guess_class.rb"

class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count

  end






  def sort

    card_worth = {"2" => 2,
                  "3" => 3,
                  "4" => 4,
                  "5" => 5,
                  "6" => 6,
                  "7" => 7,
                  "8" => 8,
                  "9" => 9,
                  "10" => 10,
                  "Jack" => 11,
                  "Queen" => 12,
                  "King" => 13,
                  "Ace" => 14 ,
                  "Clubs" => 0.1,
                  "Diamonds" => 0.2,
                  "Hearts" => 0.3,
                  "Spades" => 0.4
                  }

















    array_count = @cards.length
    loop do
      swapped= false


      (array_count - 1).times do |card|
        if card_worth[@cards[card].value] > card_worth[@cards[card+1].value]
          @cards[card], @cards[card+1] = @cards[card+1], @cards[card]
          swapped = true

        elsif card_worth[@cards[card].value] == card_worth[@cards[card+1].value]
            card_a = card_worth[@cards[card].value] + card_worth[@cards[card].suit]
            card_b = card_worth[@cards[card+1].value] + card_worth[@cards[card+1].suit]
            if card_a > card_b
              card_a, card_b = card_b, card_a
              swapped = true
            end







        end
      end
      # binding.pry
      break if not swapped
    end


    @cards

  end
end
