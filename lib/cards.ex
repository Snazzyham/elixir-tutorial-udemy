defmodule Cards do
  # option one 
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Clubs", "Hearts", "Spades", "Diamonds"]

    cards =
      for value <- values do
        for suit <- suits do
          "#{value} of #{suit}"
        end
      end

    List.flatten(cards)
  end

  # option two  
  def create_deck_2 do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Clubs", "Hearts", "Spades", "Diamonds"]

    for suit <- suits,
        value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
  end
end
