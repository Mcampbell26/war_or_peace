class Player
  attr_reader :name, :deck, :lost

  def initialize(name, deck)
    @name = name
    @deck = deck
    @lost = false
  end

  # def has_lost?
  #   # @deck.each do |card|
  #     if @cards.length = 0
  #       return true
  #     else
  #       return false
  #     end
  #   end
  # end

  def has_lost?
    deck.cards.empty?
    # binding.pry
  end

# def has_lost?
#   new_deck = []
#   @cards.each do |card|
#     if card.rank > 11
#         new_deck << card
#     end
#   end
#   new_deck.empty?
# end
end
