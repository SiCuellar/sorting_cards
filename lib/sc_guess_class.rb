# class named Guess
require "./lib/sc_card_class.rb"

class Guess
  def initialize(response,card)
    @response = response
    @card = card
  end

  def card
    @card
  end

  def response
    @response
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suit}"
      return true
    else
      return false
    end
  end

  def feedback
    if correct?
      puts "Correct!"
    return "Correct!"
    else
      puts "Incorrect!"
      return"Incorrect!"
    end
  end

end
