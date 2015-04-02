require_relative ('./flash_model_card')
require 'csv'

class FlashCardDeck

  attr_reader :flashcards

  def initialize

    @flashcards = []
    load_cards
  end

  def load_cards
    CSV.read('./flash_questions.csv').each do |line|
      line.chomp
      question =  line[0]
      answer = line[1]
      @flashcards << FlashCard.new(question, answer)
    end

  end

  def next_card
    @flashcards.shift
  end

end
