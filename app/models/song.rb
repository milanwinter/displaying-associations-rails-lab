class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def song_format
    return "#{self.artist_name} - #{self.title}"
  end
end
