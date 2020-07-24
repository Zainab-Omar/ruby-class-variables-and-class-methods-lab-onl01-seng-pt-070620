class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres << genre
    @@artists << artist
    
  end
  def self.count
    @@count
  end
  def self.genres
    @@genres.to_set
    #@@genres.uniq work the same as to_set
  end
  def self.artists
    @@artists.uniq
  end
  def self.genre_count
    genre_songs_hash={}
    @@genres.each {|genre| genre_songs_hash[genre] +=1}
  end
    
end