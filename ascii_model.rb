class Ascii

  def initialize(file)
    @ascii = File.readlines(file)
    @paths = Dir['./ascii_art/*']
  end

  def print_ascii
      system("clear")
    @ascii.each do |line|
      puts line.chomp
      sleep(0.05)
    end
  end
end

def next_ascii
  next_ascii = @paths.shift
end

new_art = Ascii.new('./ascii_art/josh.txt')
new_art.print_ascii
