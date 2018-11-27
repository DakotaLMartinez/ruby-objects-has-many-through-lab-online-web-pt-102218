class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name 
    self.artist = artist 
    self.genre = genre
  end
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self) unless artist.songs.include?(self)
  end
    
end