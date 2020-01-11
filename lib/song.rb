class Song

attr_accessor :name, :artist, :genre 

@@count = 0
@@artists = []
@@genres = []
@@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
    
        @@count += 1
        @@all << self 
        # as each song is initialized, we get the artist
        # from the song and shovel the artist in to the @@artists array
        @@artists << self.artist 
        @@genres << self.genre 
        
    end 

    def self.count
        @@count 
    end 

    def self.all
        @@all 
    end 

    # returns a *unique* array of artists of existing songs, 
    # so we need to map over the artists array and delete the 
    # repeats of artists that already exist, which we can do 
    # using the #uniq! method (using uniq won't alter the artists array,
    # so we need to use uniq! to return the altered array)
    def self.artists
        @@artists.uniq!
    end 

    def self.genres
        @@genres.uniq!
    end 

    # returns a hash of genres and the number of songs that have those genres
    def self.genre_count
        genre_count = {}
        #iterates over the @@genres array and and counts how many times that genre appears 
       @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else 
                genre_count[genre] = 1
            end 
        end 
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        #iterates over the @@artists array and and counts how many times that artist appears 
       @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1 
            else 
                artist_count[artist] = 1
            end 
        end 
        artist_count
    end 

end 