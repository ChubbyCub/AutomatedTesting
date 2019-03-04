
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"

      # Arrange
      value = 2
      suit = :diamonds
      card = Card.new(value, suit)

      # Act
      text_result = card.to_s

      # Assert
      expect(text_result).must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      values = [1, 11, 12, 13]
      names = ["Ace", "Jack", "Queen", "King"]
      suits = [:hearts, :spades, :clubs, :diamonds]
      
      values.each_with_index do |value, index|
        card = Card.new(value, suits[index])
        expect(card.to_s).must_equal("#{names[index]} of #{suits[index]}")
      end
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      values = [2, 4, 13, 1]
      suits = [:hearts, :spades, :clubs, :diamonds]

      values.each_index { |i|
        card = Card.new(values[i], suits[i])
        expect(card.value).must_equal values[i]
      }
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      values = [2, 4, 13, 1]
      suits = [:hearts, :spades, :clubs, :diamonds]

      suits.each_index { |i|
        card = Card.new(values[i], suits[i])
        expect(card.suit).must_equal suits[i]
      }
    end
  end

end
