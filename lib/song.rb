require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@artists << @artist 
    @@genres << @genre
  end 
  
  def Song.count 
    @@count 
  end 
  
  def Song.artists
    @@artists.uniq!
  end 
  
  def Song.genres 
    @@genres.uniq!
  end 
  
  def Song.genre_count 
    genre_hash = {}
    @@genres.each do |genre_key|
      if genre_hash.has_key?(genre_key)
        genre_hash[genre_key] += 1 
      else 
        genre_hash[genre_key] = 1 
      end 
    end 
    genre_hash
  end 
  
  def Song.artist_count
    artist_hash = {}
    @@artist.each do |artist_key|
      if artist_hash.has_key?(artist_key)
        artist_hash[artist_key] += 1 
      else 
        artist_hash[artist_key] = 1
      end 
    end 
    artist_hash
  end 
  
end 