class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user



  validates :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id, numericality: { other_than: 1 } 
end
