class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :readers
  validates :title, presence: true,
            length: { minimum: 5 }
  validate :title_should_not_contain_dirty_words
  validates_associated :readers

  def title_should_not_contain_dirty_words
    if title=='12345678'
      errors.add(:title, "can't be 12345678")
    end
  end
end
