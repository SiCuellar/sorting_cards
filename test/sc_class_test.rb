# Sorting Card test file?

require "pry"
require "../lib/sorting_cards_card_class.rb"
require 'minitest/autorun'
require 'minitest/pride'

class SortingCardTest < Minitest::Test
  def test_correct_card_value
    card = Card.new("Ace","Spades")
    assert_equal "Ace", card.value
  end
end
