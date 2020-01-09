class Song 
  attr_accessor :name, :artist, :genres
  def initialize(name)
    @name = name
  end
  def initialize(artist)
    @artist = artist
  end
  def initialize(genres)
    @genres = genres
  end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z" "rap")
thriller = Song.new("Thriller", "Michael Jackson", "pop")
gods_plan = Song.new("God's Plan", "Drake", "rap")


def initialize(count)
  @@count << 0 
  @@count += 1 
  
  def count.all 
    @@all
  end
  
  def genres.all
    @@all
  end
  def artist.all
    @@artist
  end
end