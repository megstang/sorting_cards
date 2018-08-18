
class Guess
  attr_reader :response, :card
  def initialize (response, card)
    @response = response
    @card = card
  end

  def correct?
    guess_value = response.split[0]
    guess_suit  = response.split[2]
    guess_value == card.value && guess_suit == card.suit
  end

  def feedback
    if guess.correct?
      puts "Correct"
    else
      puts "Incorrect."
    end
  end 
end
