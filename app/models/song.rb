class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, inclusion: {in: %w(true false)}
  validates :release_year, 
  validate :title_cannot_be_repeated_by_same_artist_in_same_year

  def title_cannot_be_repeated_by_same_artist_in_same_year
    def fails_validation?
      songs_with_same_title_and_year = Song.all.select do |song|
        song.title == title && song.year == year
      end

      !songs_with_same_title_and_year.empty?
    end

    if fails_validation?
      errors.add(:title, "can't be repeated by the same artist in the same year")
    end
  end

  def if_released_must_have_release_year
    def passes_validation?
      if released && release_year <= Time.new.year
        
    end
  end
end
