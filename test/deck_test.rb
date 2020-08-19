require './lib/deck'
require 'minitest/autorun'
require 'minitest/pride'

class DeckTest < Minitest::Test
  def test_did_it_initialize
    deck_1 = Deck.new
    assert_instance_of Deck, deck_1
  end


end
