require "pry"

class Song
    attr_reader :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count
        genre_count = Hash.new(0)

        @@genres.each { |genre| genre_count[genre] += 1 }

        genre_count
    end
    
    def self.artist_count
        artists_count = Hash.new(0)

        @@artists.each { |genre| artists_count[genre] += 1 }

        artists_count
    end
end



# binding.pry