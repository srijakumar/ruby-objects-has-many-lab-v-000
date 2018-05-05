class Artist

attr_accessor :song, :name

@@song_count = 0

def initialize(name)
  @name = name
  @song = []
end

def add_song(new_song)
  self.song << new_song
  song.artist = self
  @@song_count +=1
end

def add_song_by_name(name)
  song = Song.new(name)
  self.songs << song
  song.artist = self
  @@song_count +=1
end


def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

end
