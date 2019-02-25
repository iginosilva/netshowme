class Video < ApplicationRecord
  belongs_to :user

  validates :title, :description, :url, :thumbnail, :user_id, presence: true

  scope :activated, -> { where(active: 'true') }
end
