require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_it_can_access_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_current_card_index_starts_at_0
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal 0, round.current_card_index
  end

  def test_number_correct_starts_at_0
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal 0, round.number_correct
  end

  def test_it_can_make_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_it_can_find_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_it_can_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    # guess = Guess.new("3 of Hearts",card_1)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "3 of Hearts", round.guesses.last.response
    assert_instance_of Guess, round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal "Jack of Diamonds", round.guesses.last.response
  end

  def test_it_can_count_how_many_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Queen","Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    round.record_guess({value: "Queen", suit: "Diamonds"})
    assert_equal 2, round.number_correct
  end

  def test_it_can_calculate_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Queen","Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    round.record_guess({value: "Queen", suit: "Diamonds"})
    assert_equal 67,round.percent_correct
  end


end
