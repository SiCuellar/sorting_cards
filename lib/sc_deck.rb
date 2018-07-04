require "pry"
require "./lib/sc_card_class.rb"
require "./lib/sc_guess_class.rb"

class Deck

  attr_reader :cards_array

  def initialize(input_card_array)
    @cards_array = input_card_array
  end

  def count
    @cards_array.count

  end

end
