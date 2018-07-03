#class named card that allows you to call the arguemnt of value and suit

class Card
  def initialize(value_argument,suit_argument)
    @value = value_argument
    @suit = suit_argument
  end

  def value
    @value
  end

  def suit
    @suit
  end

end



# Do I have to physically add King, Queen, Jack??

# class card
#   def initialize (value_argument,suit_argument)
#     if value_argument == "Ace"
#       @value = "14"
#     elsif value_argument == "King"
#       @value = "13"
#     elsif value_argument == "Queen"
#       @value = "12"
#     elsif value_argument == "Jack"
#       @value = "11"
#     else
#       @value = value_argument
#     end
#
#     @suit = suit_argument
#   end
# end
