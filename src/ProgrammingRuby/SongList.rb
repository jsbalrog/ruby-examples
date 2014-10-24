require 'Song'
require 'WordIndex'
class SongList

  def initialize
    @songs = Array.new
    @index = WordIndex.new
  end
  
  def append(song)
    @songs.push(song)
    @index.add_to_index(song, song.name, song.artist)
    self
  end
  
  def lookup(word)
    @index.lookup(word)
  end
  
  def delete_first
    @songs.shift
  end
  
  def delete_last
    @songs.pop
  end
  
  def[](index)
    @songs[index]
  end
  
  def with_title(title)
    @songs.find {|song| title = song.name}
  end
  
end