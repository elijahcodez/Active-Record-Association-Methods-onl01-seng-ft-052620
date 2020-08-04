class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.length
  end

  def all_artist_names
    self.artists.map {|a| a.name}
    # return an array of strings containing every musician's name
  end
end
© 2020 GitHub, Inc.