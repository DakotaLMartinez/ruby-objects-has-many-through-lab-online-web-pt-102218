class Genre
   attr_accessor :name, :songs, :artists
   
   def initialize(name)
      @name = name
      @songs = []
   end
   
   def add_song(song)
      self.songs << song unless self.songs.include?(song)
      song.genre = self unless song.genre == self
   end
   
   def artists
      self.songs.collect do |song|
         song.artist 
      end
   end
    
end
