require 'pry'


#left off trying to solve has many songs test

class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end
    
    def songs
        #binding.pry
        Song.all.select {|song| song.artist == self}
    end 
    
    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @songs << song
    end

    def self.song_count
        Song.all.count
    end


end 


# def add_song_by_name(name, genre)
#     song = Song.new(name, genre)
#     song.artist = self
#   end