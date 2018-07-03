

require "pry"
require "./lib/sc_guess_class.rb"
require "minitest/autorun"
require "minitest/pride"

class SortingCardGuessTest < Minitest::Test

  def test_card_method
    card = Card.new("10","Hearts")
    guess = Guess.new("2 of Diamonds",card)
    expected = card
    actual = guess.card
    assert_equal expected, actual
  end

  def test_response_method
    card = Card.new("10","Hearts")
    guess = Guess.new("2 of Diamonds",card)
    expected = "2 of Diamonds"
    actual = guess.response
    assert_equal expected, actual
  end

  def test_correct_method
    card = Card.new("10","Hearts")
    guess = Guess.new("2 of Diamonds",card)
    expected = false
    actual = guess.correct?
    assert_equal expected, actual
  end

  def test_feedback_method
    card = Card.new("10","Hearts")
    guess = Guess.new("2 of Diamonds",card)
    expected = "Incorrect!"
    actual = guess.feedback
    assert_equal expected, actual
  end
end
