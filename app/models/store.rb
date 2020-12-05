class Store < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture, :city


  validates :image, :store_name, :phone, :station, :zip_code, :prefecture_id, :city_id, :line, presence: true
  #ジャンルの選択が「--」の時は保存できないようにする
  validates :prefecture_id, :city_id, numericality: { other_than: 0 } 
end
