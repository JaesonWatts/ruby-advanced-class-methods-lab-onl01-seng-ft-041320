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
    #initializes a song and saves it to the @@all variable
  end
  
  def self.new_by_name
    # takes in the string name of a song and returns a song instance with that name set as its name property
  end
  
  def self.create_by_name
    # takes in the string name of a song and returns a song instance with that name set as its name property and the song being saved into the @@all class variable.
  end
  
  def self.find_by_name
    #accepts the string name of a song and returns the matching instance of the song with that name.
  end
  
  def self.find_or_create_by_name
    #will accept a string name for a song and either return a matching song instance with that name or create a new song with the name and return the song instance.
  end
  
  def self.alphabetical
    #
  end
  
  
  
  
  
  
  
end
