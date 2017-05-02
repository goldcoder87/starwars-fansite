class Film < ApplicationRecord
  validates :title, presence: true
  validates :episode_id, presence: true
  validates :director, presence: true
  validates :characters, presence: true 
end
