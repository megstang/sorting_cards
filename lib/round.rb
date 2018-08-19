class Round
  attr_reader :deck,
              :guesses,
              :current_card,
              :record_guess

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response_hash)
    guess_string = "#{response_hash[:value]} of #{response_hash[:suit]}"
    @guesses << Guess.new(guess_string,current_card)
    @guesses.last
  end


end
