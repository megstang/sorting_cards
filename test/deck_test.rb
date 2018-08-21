require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test
  def test_it_exists

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_can_list_cards

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_it_can_count_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

  def test_it_can_bubble_sort
    skip
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    card_6 = Card.new("Queen","Diamonds")
    card_7 = Card.new("4","Clubs")
    card_8 = Card.new("5","Spades")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8])
    assert_equal [card_7, card_1, card_3, card_8, card_2, card_6, card_5, card_4],deck.bubble_sort
  end

  def test_it_can_merge_sort
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    card_6 = Card.new("Queen","Diamonds")
    card_7 = Card.new("4","Clubs")
    card_8 = Card.new("5","Spades")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8])
    assert_equal [card_7, card_1, card_3, card_8, card_2, card_6, card_5, card_4],deck.merge_sort
  end
end
