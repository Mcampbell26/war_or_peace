require './lib/deck'
require './lib/card'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DeckTest < Minitest::Test
  def test_it_exists_has_attributes
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_instance_of Deck, deck
    assert_equal cards, deck.cards
  end

  def test_rank_of_card_at
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal 12, deck.rank_of_card_at(0)
    assert_equal 14, deck.rank_of_card_at(2)
  end

  def test_high_ranking_cards
    # skip
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal [card1, card3], deck.high_ranking_cards
  end


  def test_what_is_the_percent
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal 66.67, deck.percent_high_ranking
   end

   def test_remove_card
     card1 = Card.new(:diamond, 'Queen', 12)
     card2 = Card.new(:spade, '3', 3)
     card3 = Card.new(:heart, 'Ace', 14)
     cards = [card1, card2, card3]

     deck = Deck.new(cards)

     deck.remove_card

     assert_equal [card2, card3], deck.cards
     assert_equal 50, deck.percent_high_ranking
   end

   def test_add_card
     card1 = Card.new(:diamond, 'Queen', 12)
     card2 = Card.new(:spade, '3', 3)
     card3 = Card.new(:heart, 'Ace', 14)
     card4 = Card.new(:club, '5', 5)
     cards = [card1, card2, card3]

     deck = Deck.new(cards)

     deck.remove_card
     deck.add_card(card4)

     assert_equal [card2, card3, card4], deck.cards
     assert_equal 33.33, deck.percent_high_ranking
   end

end
