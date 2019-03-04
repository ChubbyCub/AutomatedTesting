
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    if !(1..13).include?(value) 
      raise ArgumentError.new("Invalid value")
    end

    if ![:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError.new("Invalid suit")
    end
  end

  def to_s
    case value
    when 1
      return "Ace of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end
end
