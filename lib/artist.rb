class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song|song.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = @@all.find{|a|a.name == artist_name}
    #return artist if artist
    artist = Artist.new(artist_name)
  end
  
  def print_songs
    self.songs.each{|song| puts song.name}
  end
end