
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
    random_number = rand(0..51)
    return @bucket.delete_at(random_number)
  end

  def shuffle
    for i in 0..@bucket.length - 1 do
      random_number = rand(i..@bucket.length - 1)
      temp = @bucket[i]
      @bucket[i] = @bucket[random_number]
      @bucket[random_number] = temp
    end
  end

  def count
    return @bucket.length
  end
end
