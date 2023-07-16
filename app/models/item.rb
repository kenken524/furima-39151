class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category_id, :status_id, :delivery_cost_id,:prefecture_id, :day_to_ship_id
  belongs_to :user
  has_one_attached :image




  validates :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id, numericality: { other_than: 1 , message: "can't be blank"}
end
