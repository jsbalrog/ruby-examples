class Song
    @@plays = 0
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays = 0
  end

  def self.plays
    @@plays
  end

  attr_reader :name, :artist, :duration
  attr_writer :duration

  def play
    @plays += 1
    @@plays += 1
    "This song: #@plays plays. Total #@@plays plays."
  end

  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end

