
class Deck
  attr_reader :cards,
              :count,
              :sort

  def initialize (cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    return @cards if count <= 1
    swap = true
      while swap 
        swap = false
        (count - 1).times do |i|
          if @cards[i].numeric_value == @cards[i + 1].numeric_value && @cards[i].numeric_suit > @cards[i+1].numeric_suit
            @cards[i],@cards[i+1] = @cards[i+1], @cards[i]
          elsif @cards[i].numeric_value > @cards[i + 1].numeric_value
            @cards[i],@cards[i+1] = @cards[i+1], @cards[i]
            swap = true
          end
        end
      end
      @cards
  end

end
