
require "set"
require_relative "spec_helper"

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  it "has 52 cards" do
    deck = Deck.new
    expect(deck.bucket.length).must_equal 52
  end

  it "has unique cards" do
    deck = Deck.new
    expect(deck.bucket.uniq.length == deck.bucket.length).must_equal true
  end
  # 2.  Edge cases
  # 3. Test that all cards are unique
  # 4. Not more than 4 of each value
  # 5. Deal reduces the count by the number you deal
  # 6. Deal returns the correct number of cards
  # 7.

end
