class FlashAsciiView

  def welcome_message
    puts "Welcome to Flashascii, A Game For Flash Asses."
  end

  def display_question(question)
    puts "Question:\n\n #{question}"
  end

  def ask_for_guess
    puts "Your guess: "
    gets.chomp
  end

  def correct_guess
    puts "Way to go! Check out this flash Ascii art: \n\n"
  end

  def incorrect_guess
    puts "Boo, you suck!"
  end

  def final_message
    puts "Thanks for being a Flash Ass."
  end

end
