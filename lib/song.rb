class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def self.all 
    @@all 
  end
  def initialize(name, artist, genre)
    @name = name 
    self.artist = artist 
    self.genre = genre
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def genre=(genre)
    @genre = genre 
    genre.add_song(self) unless genre.songs.include?(self)
  end
    
end