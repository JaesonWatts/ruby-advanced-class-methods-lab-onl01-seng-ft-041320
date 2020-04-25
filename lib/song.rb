class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song
  end
  
  def self.new_by_name
    # takes in the string name of a song and returns a song instance with that name set as its name property
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name
    # takes in the string name of a song and returns a song instance with that name set as its name property and the song being saved into the @@all class variable.
    song = self.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name
    #accepts the string name of a song and returns the matching instance of the song with that name.
    @@all.find{|it| it.name == name}
  end
  
  def self.find_or_create_by_name
    #will accept a string name for a song and either return a matching song instance with that name or create a new song with the name and return the song instance.
    
  end
  
  def self.alphabetical
    #returns all the songs in ascending (a-z) alphabetical order.
    #Use Array#sort_by.
     @@all.sort_by{|it| it.name}
  end
  
  def self.new_from_filename
    # accepts a filename in the format of " - .mp3", for example, "Taylor Swift - Blank Space.mp3"
    #Given Song.new_from_filename("Taylor Swift - Blank Space.mp3"), the constructor should return a new Song instance with the song name set to Blank Space and the artist_name set to Taylor Swift
  end
  
  def self.create_from_filename
    #accepts a filename in the format of " - .mp3", for example "Taylor Swift - Blank Space.mp3". The Song.create_from_filename class method should not only parse the filename correctly but should also save the Song instance that was created.
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  
  
  
  
  
  
end
