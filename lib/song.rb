class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name


    @artist = artist
    @@artists << artist

    @genre = genre
    @@genres << genre
    @@genre_count[:"#{genre}"] = (@@genre_count[:"#{genre}"] ? @@genre_count[:"#{genre}"] + 1 : 0)
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
    @@genre_count
  end

end
