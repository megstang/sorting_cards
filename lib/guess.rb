
class Guess
  attr_reader :card,
              :response

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
    if correct?
      return "Correct!"
    else
      return  "Incorrect."
    end
  end
end
