require_relative ('./flash_model_card')
require 'csv'

class FlashCardDeck

  attr_reader :flashcards

  def initialize
    @flashcards = []
    load_cards
  end

  def load_cards
    cards = CSV.foreach('./flash_questions.csv', :headers => :true, :header_converters => :symbol) do |row|
      card = row.to_hash
      @flashcards << FlashCard.new(card)
    end
  end

  def next_card
    @flashcards.shift
  end

end
