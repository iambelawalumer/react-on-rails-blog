class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :title, presence: true, length: {minimum: 5}

  #slug generation
  extend FriendlyId
  friendly_id :title, use: :slugged

  #Page view counter
  is_impressionable counter_cache: true

  #image uploader
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      where("title LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
