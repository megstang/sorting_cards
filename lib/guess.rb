
class Guess
  attr_reader :response, :card, :feedback
  def initialize (response, card)
    @response = response
    @card = card
    @feedback
  end

  def correct?
    guess_value = response.split[0]
    guess_suit  = response.split[2]
    guess_value == card.value && guess_suit == card.suit
  end

  def feedback
    if correct?
      @feedback = "Correct!"
    else
      @feedback = "Incorrect."
    end
  end
end
