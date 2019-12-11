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
    g_hash = {}
    @@genres.each do |g|
      if g_hash.has_key?(g)
        g_hash[g] += 1 
      else 
        g_hash[g] = 1 
    end 
    g_hash
  end 
  
  def Song.artist_count
    
  end 
  
end 