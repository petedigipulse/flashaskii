require_relative ('./flash_model_card')
require 'csv'

class FlashcardDeck

  attr_reader :flashcards

  def initialize(file)

    @file = file
    @flashcards = []
    load_cards
  end

  def load_cards
    CSV.read(@file) do |line|
      line[0] = question
      line[1] = answer
      @flashcards << FlashCard.new(question, answer)
    end

  end

end

