class Song

    attr_accessor :name, :artist, :genre
    
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
        
        genre_num = @@genres.group_by{|genre| genre}.map{|key, value| [key, value.count]}
        return Hash[*genre_num.flatten]

    #     genre_count = {}
    #     @@genres.each do |genre|
    #       if genre_count[genre]
    #         genre_count[genre] += 1 
    #       else
    #         genre_count[genre] = 1
    #       end
    #     end
    #     genre_count
    #   end

    end 

    def self.artist_count

        artist_num = @@artists.group_by{|artist| artist}.map{|key, value| [key, value.count]}
        return Hash[*artist_num.flatten]

    end

end