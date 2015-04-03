class Ascii

  def initialize
    @paths = Dir['./ascii_art/*']
  end

  def print_ascii
      system("clear")
    @ascii.each do |line|
      puts line.chomp
      sleep(0.05)
    end
  end

  def next_ascii
    next_ascii = @paths.shift
  end



  def parse_file(file)
    @ascii = File.readlines(file)
  end

end

new_art = Ascii.new
# file = new_art.parse_file('./ascii_art/josh.txt')

# new_art.print_ascii
next_file = new_art.next_ascii
new_art.parse_file(next_file)
new_art.print_ascii
next_file = new_art.next_ascii
new_art.parse_file(next_file)
new_art.print_ascii
