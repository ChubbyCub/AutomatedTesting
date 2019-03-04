
# deck.rb

require_relative 'card.rb'

class Deck
  attr_reader :bucket
  def initialize
    @bucket = []
    values = (1..13).to_a
    suits = [:hearts, :spades, :clubs, :diamonds]
    for i in 0...values.length do
      for j in 0...suits.length do
        bucket << Card.new(values[i], suits[j])
      end
    end
  end

  def draw
    # returns a card
  end

  def shuffle
    # shuffles the deck
  end
end
