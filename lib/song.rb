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
        @@artists << artist
        @@genres << genre
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
        count_hash = {}
        @@genres.uniq.each do |genre|
            count = @@genres.select { |song_genre| song_genre == genre }
            count_hash[genre] = count.size
        end
        count_hash
    end

    def self.artist_count
        count_hash = {}
        @@artists.uniq.each do |artist|
            count = @@artists.select { |song_artist| song_artist == artist }
            count_hash[artist] = count.size
        end
        count_hash
    end
end