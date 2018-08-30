require_relative 'card.rb'

class Deck
  attr_reader :stack

  SUITS = ['clover', 'spades', 'diamond', 'heart']
  VALUES = ['A', 'K', 'Q', 'J', '10', '9', '8', '7', '6', '5', '4', '3', '2']

  def initialize
    @stack = []
  end

  def populate_deck
    VALUES.each do |val|
      SUITS.each do |suit|
          @stack << Card.new(val, suit)
      end
    end

   @stack.shuffle!
  end

  def distribute_cards

  end

  def draw_cards

  end
  #populate shufffle and distribute to the cards to the players

end
