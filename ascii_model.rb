class Ascii

  def initialize(file)
    @ascii = File.readlines(file)
  end

  def print_ascii
      system("clear")
    @ascii.each do |line|
      puts line.chomp
      sleep(0.05)
    end
  end
end

new_art = Ascii.new('eugene.txt')
new_art.print_ascii
