class Blog < ApplicationRecord
  
  validates :title, presence: true
  validates :content, presence: true
  validates :start_time, presence: true
  validates :user, foreign_key: true
end
