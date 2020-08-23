class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def spoils_of_war
    @spoils_of_war
  end

  def type
    if (turn.player1.deck.rank_of_card_at(0) == turn.player2.deck.rank_of_card_at(0)) &&
       (turn.player1.deck.rank_of_card_at(2) == turn.player1.deck.rank_of_card_at(2))
       return :mutually_assured_destruction

    elsif turn.player1.deck.rank_of_card_at(0) == turn.player2.deck.rank_of_card_at(0)
        return :war

    else
      return :basic
  end

  def winner
    case type
      when :basic
        if turn.player1.deck.rank_of_card_at(0) > turn.player2.deck.rank_of_card_at(0)
          return player1

        else
          return player2
        end

      when :war
        if turn.player1.deck.rank_of_card_at(2) > turn.player2.deck.rank_of_card_at(2)
          return player1

        else
          return player2
        end

      when :mutually_assured_destruction
          return "No Winner"
        end
    end

    
end
