# Sorting Card test file?

require "pry"
require "./lib/sorting_cards.rb"
require 'minitest/autorun'
require 'minitest/pride'

class SortingCardTest < Minitest::Test
  def test_correct_value
    card = Card.new("Ace","Spades")
    assert_equal "Ace" , card.get_value
  end
end
