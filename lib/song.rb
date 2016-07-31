class Song
  def initialize(name)
    @name = name
  end

  def artist
    @artist

  end

  def artist=(artist)
  @artist = artist
  end

  def name 
    @name
  end

  def artist_name
    if artist.class == Artist
      artist.name
    else
    nil
  end
  end
end