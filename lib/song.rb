require 'pry'
class Song

        @@count = 0
        @@artists = []
        @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self
        @@genres << self
    end

    def self.name
        @name
    end

    def self.genres
        self.count.select {|song| song.genre}
    end

    def self.artists
        @@artists
    end

    def self.genres
        @@genres.hash
    end

    def self.artist_count
        @@artists.count
    end

    def self.genre_count
        @genres.count
    end

    def self.count
        @@count
    end

end
