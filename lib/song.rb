class Song

  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

   def self.all
    @@all 
  end

<<<<<<< HEAD
  def self.new_by_filename(filename)
=======
  def self.new_by_filename(name)
>>>>>>> ecc7725324648c9ae305ba1a7c966aa9420a16c3
    artist_name = filename.split(" - ")[0]
    title = filename.split(" - ")[1]
    song = self.new(title) 
    song.artist_name = artist_name
<<<<<<< HEAD
    song
=======
>>>>>>> ecc7725324648c9ae305ba1a7c966aa9420a16c3
  end
  
  def artist_name=(name)
    the_artist = Artist.find_or_create_by_name(name)
    @artist = the_artist
    the_artist.add_song(self)
  end
end
