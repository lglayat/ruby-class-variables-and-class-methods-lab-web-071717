require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_count = {}
  @@artist_count = {}


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << artist
    @@genres << genre
    @@genres_count[genre] = @@genres.count(genre)
    @@artist_count[artist] = @@artists.count(artist)
  end

  def self.count
    @@count
  end

  def self.artists
    newArr = []
    @@artists.each do |artist|
      newArr << artist if newArr.include?(artist) == false
    end

    newArr

  end

  def self.genres
    newArr = []
    @@genres.each do |genre|
        newArr << genre if newArr.include?(genre) == false
    end
    newArr
  end

  def self.genre_count
    @@genres_count
  end

  def self.artist_count
    @@artist_count
  end

end
