class Blog < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :start_time, presence: true
  validates :user_id, presence: true
end
