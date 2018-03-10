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
    x= self.new
    x.save
    x
  end

  def self.create_by_name(string_name_of_the_song)
    x= self.new
    x.name = string_name_of_the_song
    x.save
    x
  end

end
