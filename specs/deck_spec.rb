
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

  it "has exactly four suits for each card value" do
    deck = Deck.new
    hash = {}
    is_no_more_than_four = true
    deck.bucket.each do |card|
      if !hash.has_key?(card.value)
        hash[card.value] = 1
        next
      end

      hash[card.value] += 1
    end

    hash.values.each do |value|
      if value > 4 || value < 4
        is_no_more_than_four = false
      end
    end
    
    expect(is_no_more_than_four).must_equal true
  end

  it "reduces number of cards in a deck when drawn" do
    deck = Deck.new
    deck.draw
    expect(deck.bucket.length).must_equal 51
  end

  it "returns the number of cards in a deck" do
    deck = Deck.new
    expect(deck.count).must_equal 52

    5.times do
      deck.draw
    end
    expect(deck.count).must_equal 47
  end
  # 2.  Edge cases


end
