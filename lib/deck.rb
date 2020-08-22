class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    new_deck = []
    @cards.each do |card|
      if card.rank > 11
          new_deck << card
      end
    end
    new_deck
  end

  def percent_high_ranking
    high_rank = []
    low_rank = []
    @cards.each do |card|
      if card.rank >= 11
        high_rank << card
      else
        low_rank << card
      end
      high_rank
    end
      (high_rank.count.to_f / @cards.count).round(4) * 100
  end


end


  # def remove_card
  # end
  #
  # def add_card
  # end
