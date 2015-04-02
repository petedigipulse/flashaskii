class FlashAsciiView

  def welcome_message
    puts "Welcome to Flashascii, A Game For Flash Asses.")
  end

  def display_question
    puts "Question: \n\n"
  end

  def ask_for_guess
    puts "Your guess:\n\n"
    gets.chomp
  end

  def correct_guess
    puts "Way to go! Check out this flash Ascii art: /n/n"
  end

  def incorrect_guess
    puts "Boo, you suck!"
  end

  def finish_message
    puts "Thanks for being a Flash Ass."
  end

end
