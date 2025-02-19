require './lib/card.rb'
require 'rspec'
require 'pry'

class Deck

  attr_reader :cards

  def initialize (cards)
    # formatted as an array of Card instances
    @cards = cards
  end

  def rank_of_card_at (index)
    if @cards[index] == nil
      return nil
    else
      return @cards[index].rank
    end
  end

  def high_ranking_cards()
    high_cards = []
    @cards.each do |card|
      if (card.rank>=11)
        high_cards << card
      end
    end
    return high_cards
  end

  def percent_high_ranking
    ((100*high_ranking_cards.length.to_f) / @cards.length.to_f).round(2)
  end

  def remove_card
    @cards.shift
    #this should return the card to be transfered to the spoils pile while removing it from the player's hand at the same time!
  end

  def add_card(spoils)
    @cards += spoils
  end
end
