class Card
  attr_reader  :suit, :value

  def initialize (value, suit)
    @value = value
    @suit = suit
  end

  def numeric_value
    if @value == "Jack"
       11
    elsif @value == "Queen"
        12
    elsif @value == "King"
        13
    elsif @value == "Ace"
      14
    else
      return @value.to_i
    end
  end

  def numeric_suit
    if @suit == "Clubs"
      1
    elsif @suit == "Diamonds"
      2
    elsif @suit == "Hearts"
      3
    elsif @suit == "Spades"
      4
    end
  end
end
