require_relative ('./flash_model_deck')
require_relative ('./flash_view')

class FlashController


	def initialize
		@view = FlashAsciiView.new
		@deck = FlashCardDeck.new
		#@art = FlashArt.new

	end


	def start
		@view.welcome_message
		until @deck.flashcards.empty?
			correct = false
			current_card = @deck.next_card
			until correct 
				@view.display_question(current_card.question)
				user_guess = @view.ask_for_guess
				if user_guess == current_card.answer
					@view.correct_guess 
					#display ascii
					correct = true
				else
					@view.incorrect_guess
				end
			end
		end
		@view.final_message
	end
end

################ LOGIC ##################################################

# Render Welcome
# Display welcome message
# Wait for response
# Until @deck is empty?
# Serve first question
# Wait for user_input
# Validate answer with correct answer
# if wrong answer render "Try Again"
# else render right & dsiplay art
# render next question
