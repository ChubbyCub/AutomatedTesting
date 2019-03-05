
require "set"
require_relative "spec_helper"

describe Deck do
  # 1.  Expected Behavior
  it "has 52 cards" do
    deck = Deck.new
    expect(deck.bucket.length).must_equal 52
  end

  it "has unique cards" do
    deck = Deck.new
    expect(deck.bucket.uniq.length == deck.bucket.length).must_equal true
  end

  it "has no more than four suits for each card value" do
    deck = Deck.new
    hash = {}
    is_no_more_than_four = true
    deck.bucket.each do |card|
      if !hash.has_key?(card.value)
        hash[card.value] = 1
        next
      
      if hash[card.value] == 4
        is_no_more_than_four = false
        break
      end

      hash[card.value] += 1
      end
    end

    expect(is_no_more_than_four).must_equal true
  end

  it "reduces number of cards in a deck when drawn" do
    deck = Deck.new
    deck.draw
    expect(deck.bucket.length).must_equal 51
  end
  # 2.  Edge cases
  # 6. Deal returns the correct number of cards
  # 7.

end
