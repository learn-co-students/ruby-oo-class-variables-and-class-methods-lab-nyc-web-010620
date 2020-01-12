class Song

    attr_accessor :artist, :name, :genre
    # attr_reader 

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

    def initialize (name, artist, genre)

    @name= name
    @genre= genre
    @artist= artist
    @@count +=1
    @@genres << self.genre
    @@artists << self.artist
    end 

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count 
        @@genres.each do |genre| 
           if @@genre_count[genre] 
              @@genre_count[genre] +=1
           else @@genre_count[genre] =1
            end
        end
        @@genre_count  
    end


    def self.artist_count 
        @@artists.each do |artist| 
           if @@artist_count[artist] 
              @@artist_count[artist] +=1
           else @@artist_count[artist] =1
            end
        end
        @@artist_count  
    end

    def self.artists
        @@artists.uniq
    end

    
end