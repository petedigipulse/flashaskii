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
    @paths.shift
  end

  def parse_file(file)
    @ascii = File.readlines(file)
  end

end
