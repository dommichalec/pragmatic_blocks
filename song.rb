require_relative 'my_enumberable'

class Song
  attr_accessor :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  # include Enumerable
  include MyEnumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add(song)
    @songs << song
  end

  def each
    @songs.each { |song| yield song }
  end

  def play_all_songs
    @songs.each { |song| song.play }
  end
end

my_playlist = Playlist.new("My Playlist")

song_1 = Song.new("Black Skinhead", "Kanye West", "3:08")
song_2 = Song.new("'Til I Collapse'", "Eminem", "5:00")
song_3 = Song.new("Bleed America", "Jimmy Eat World", "3:02")
song_4 = Song.new("Anthem Part II", "Blink 182", "3:54")

my_playlist.add(song_1)
my_playlist.add(song_2)
my_playlist.add(song_3)
my_playlist.add(song_4)

# duration_array = my_playlist.my_map{ |song| song.duration }
p song_title_array = my_playlist.my_select { |song| song.name == "Black Skinhead" }
