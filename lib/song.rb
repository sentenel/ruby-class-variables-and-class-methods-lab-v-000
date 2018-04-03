class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name


    @artist = artist
    @@artists << artist unless @@artists.contains? artist

    @genre = genre
    @@genres << genre unless @@genres.contains? genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

end
