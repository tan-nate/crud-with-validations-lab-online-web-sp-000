class Song < ApplicationRecord
  validates :title, presence: true

  def title_cannot_be_repeated_by_same_artist_in_same_year
    def true?
      songs_with_same_title = Song.all.select do |song|
        song.title == title
      end
      !!song_with_same_title.year 
    end
  end
end
