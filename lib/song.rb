class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create
    song= self.new
    song.save
    song
  end

  def self.create_by_name(string_name_of_the_song)
    song= self.new
    song.name = string_name_of_the_song
    song.save
    song
  end

  def self.new_by_name(string_name_of_the_song)
    song = self.new
    song.name = string_name_of_the_song
    song
  end

  def self.find_by_name(string_name_of_the_song)
    self.all.detect {|i| i.name == string_name_of_the_song}
  end


end
