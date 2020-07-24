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
   hash={}
   @@genres.each do |genre|
     if hash[genre] 
        hash[genre] += 1 
      else
      hash[genre] = 1
  end
  end
  hash
 end
    def 
end