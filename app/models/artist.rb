class Artist < ActiveRecord::Base
    has_many :songs

    def artist_songs
        Song.all.select{|song| song.artist == self}
    end

    def song_count
        self.artist_songs.count        
    end

    def artist_and_song
        self.artist.name + ' - ' + self.title
    end
end
