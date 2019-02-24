class Video < ApplicationRecord
  belongs_to :user

  scope :activated, -> { where(active: 'true') }
end
