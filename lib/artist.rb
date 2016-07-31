class Artist
@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def instance_variable_get(instance_var)
      if instance_var == :@songs
        @songs
      elsif instance_var == :@@song_count
        @@song_count
      end
  end

  def name 
    @name
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count +=1
    self.songs << song
    song.artist=(self)
  end

  def add_song_by_name(song_title)
    @@song_count +=1
    new_song = Song.new(song_title)
    self.songs << new_song
    new_song.artist=(self)
  end

  def self.song_count
    @@song_count
  end



end