class Channel < ApplicationRecord
  belongs_to :user

  validates :title, :slug, :user_id, presence: true
end
