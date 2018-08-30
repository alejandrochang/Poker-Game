require 'rspec'
require 'card'
require 'deck'
require 'game'
require 'hand'
require 'player'

RSpec.describe Card do
  subject(:card) { Card.new('J', 'diamond')}
  describe '#initialize' do
    it 'takes a value and a suit' do
      expect(card.value).to eq('J')
      expect(card.suit).to eq('diamond')
    end
  end
end


expect(deck.all? { |card| card.is_a? Card }).to_be true
