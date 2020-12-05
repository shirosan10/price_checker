class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  belongs_to :user
  has_one_attaced :image

  # 空の投稿を保存できないようにする
  validates :title, :category_id, :price, presence: true

  # プルダウンの選択が「--」の時は保存できないようにする
  validates :category_id, :prefecture_id, :city_id, numericality: { other_than: 0 }
end
