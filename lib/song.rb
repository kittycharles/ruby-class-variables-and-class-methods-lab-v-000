require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
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
    @@genres.each do |genre|
      binding.pry
      genre_count[genre] = @@genres.count(genre)
    end
   genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end




end
