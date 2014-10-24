require 'test/unit'
require 'SongList'
require 'Song'

class TestSongList < Test::Unit::TestCase
  def test_delete
    list = SongList.new
    s1 = Song.new('Summer\s Gone', 'Jackopierce', 500)
    s2 = Song.new('Buses and Trains', 'Bachelor Girl', 300)
    s3 = Song.new('Missing You', 'John Waite', 400)
    s4 = Song.new('Baby Girl', 'Sugarland', 300)
    list.append(s1).append(s2).append(s3).append(s4)
    assert_equal(s1, list[0])
    assert_equal(s2, list[1])
    assert_nil(list[9])
    assert_equal(s1, list.delete_first)
    assert_equal(s2, list.delete_first)
    assert_equal(s4, list.delete_last)
    assert_equal(s3, list.delete_last)
    assert_nil(list.delete_last)

    s1.play
    assert_equal(Song.plays, 1)
    s2.play
    assert_equal(Song.plays, 2)
  end
end

File.open("songdata") do |song_file|
  songs = SongList.new
  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs.append(Song.new(title, name, mins.to_i*60+secs.to_i))
  end

  puts songs.lookup("Fats")
  puts songs.lookup("ain't")
  puts songs.lookup("RED")
  puts songs.lookup("WoRlD")

end
