
class Round
  attr_reader :deck,
              :guesses,
              :number_correct,
              :current_card_index,
              :percent_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
    @number_correct = 0
  end

  def current_card
    @deck.cards[@current_card_index]
  end

  def record_guess(response_hash)
    guess_string = "#{response_hash[:value]} of #{response_hash[:suit]}"
    @guesses << Guess.new(guess_string,current_card)
    if response_hash[:value] == current_card.value &&
      response_hash[:suit] == current_card.suit
      @number_correct += 1
    end
    @current_card_index += 1
    @guesses.last
  end

  def percent_correct
    percent_correct = (@number_correct.to_f/@guesses.count) * 100
    percent_correct.round
  end

end
