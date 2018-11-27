class Genre
   attr_accessor :name, :songs, :artists
   
   @@all = []
   
   def self.all 
     @@all
   end
   
   def initialize(name)
      @name = name
      @songs = []
   end
   
   def add_song(song)
      self.songs << song unless self.songs.include?(song)
      song.genre = self unless song.genre == self
      song
   end
   
   def artists
      self.songs.collect do |song|
         song.artist 
      end
   end
    
end
