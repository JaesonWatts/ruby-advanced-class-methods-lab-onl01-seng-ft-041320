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
  
  
  
end
