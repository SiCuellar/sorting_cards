require "pry"
require "./lib/sc_guess_class.rb"
require "./lib/sc_card_class.rb"
require "./lib/sc_deck.rb"
require "minitest/autorun"
require "minitest/pride"

class DeckTest < Minitest::Test

  def test_card
    card_1 = Card.new("3","Hearts")
    assert_instance_of Card, card_1
  end

  def test_deck_array

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of Deck, deck

  end

  def test_deck_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    actual = deck.cards
    assert_equal [card_1, card_2, card_3], actual
  end

  def test_deck_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    actual = deck.count
    expected = 3

    assert_equal expected, actual

  end

  def  test_sort_class

    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

    actual = deck.sort
    expected = [card_1, card_3, card_2, card_5, card_4]
    assert_equal expected , actual

  end
end
