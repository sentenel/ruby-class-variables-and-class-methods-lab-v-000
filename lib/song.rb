class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []; @@artist_count = {}
  @@genres = []; @@genre_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name


    @artist = artist
    @@artists << artist
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1

    @genre = genre
    @@genres << genre
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
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

  def self.artist_count
    @@artist_count
  end

end
