require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  @@songs = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    @name = name
    @artist = artist
    @genre = genre
    @@songs.push(name)
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres.uniq
  end

  def self.artists
    artists = @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |a|
      if @@genre_count[a]
        @@genre_count[a] += 1
      else genre_count[a] = 1
    end
    @@genre_count
  end
end
