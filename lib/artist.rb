class Artist
  attr_accessor :songs, :genres, :name
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song 
    song
  end
  
  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end
  
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
    
end