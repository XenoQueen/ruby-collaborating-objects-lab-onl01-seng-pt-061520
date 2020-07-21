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
    Song.all.select {|song|
  
  def add_song(song)
    
end