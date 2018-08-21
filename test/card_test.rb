require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace","Spades")
    assert_instance_of Card, card
  end

  def test_it_has_a_value
    card = Card.new("Ace","Spades")
    assert_equal "Ace", card.value
  end

  def test_it_has_a_suit
    card = Card.new("Ace","Spades")
    assert_equal "Spades", card.suit
  end

  def test_all_values_have_numeric_value
    card = Card.new("Ace","Spades")
    assert_equal 14, card.numeric_value
    card = Card.new("Jack","Clubs")
    assert_equal 11, card.numeric_value
    card = Card.new("3","Diamonds")
    assert_equal 3, card.numeric_value
    card = Card.new("Queen", "Spades")
    assert_equal 12, card.numeric_value
    card = Card.new("King", "Hearts")
    assert_equal 13, card.numeric_value
  end

  def test_all_suits_have_numeric_suits
    card = Card.new("Ace","Spades")
    assert_equal 4, card. numeric_suit
    card = Card.new("Jack","Clubs")
    assert_equal 1, card. numeric_suit
    card = Card.new("3","Diamonds")
    assert_equal 2, card. numeric_suit
    card = Card.new("King", "Hearts")
    assert_equal 3, card. numeric_suit
  end

end
