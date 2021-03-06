class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
  end

  # def spoils
  #   @spoils_of_war = []
  # end

  def type
    if (@player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)) &&
       (@player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2))
       return :mutually_assured_destruction

    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
        return :war

    else
      return :basic
    end
  end

  def winner
    case type
    when :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        return player1

      else
        return player2
      end

    when :war
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        return player1

      else
        return player2
      end

    when :mutually_assured_destruction
        return "No Winner"
    end
  end
#
  def pile_cards
    @spoils_of_war = []
    # binding.pry
    case type
    when :basic
      ante1 = player1.deck.remove_card
      ante2 = player2.deck.remove_card
      @spoils_of_war << ante1
      @spoils_of_war << ante2

    when :war
      ante1 = []
      ante2 = []
      ante1 << player1.deck.remove_card
      ante1 << player1.deck.remove_card
      ante1 << player1.deck.remove_card
      ante2 << player2.deck.remove_card
      ante2 << player2.deck.remove_card
      ante2 << player2.deck.remove_card

      @spoils_of_war << ante1
      @spoils_of_war << ante2
      @spoils_of_war.flatten

    when :mutually_assured_destruction
      trash = []
      ante1 = []
      ante2 = []
      ante1 << player1.deck.remove_card
      ante1 << player1.deck.remove_card
      ante1 << player1.deck.remove_card
      ante2 << player2.deck.remove_card
      ante2 << player2.deck.remove_card
      ante2 << player2.deck.remove_card

      trash << ante1
      trash << ante2
  end

  
end
end
