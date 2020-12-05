class Item < ApplicationRecord
  belongs_to :user
  has_one_attaced :image

  validates :user,           presence: true
  validates :title,           presence: true
  validates :note,           presence: true
  validates :jan_code,           presence: true
  validates :model_num,           presence: true
  validates :store_name,           presence: true
  validates :daytime,           presence: true
  validates :price,           presence: true
  
end
