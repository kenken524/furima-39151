class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category_id, :status_id, :delivery_cost_id,:prefecture_id, :day_to_ship_id
  belongs_to :user
  has_one_attached :image

  validates :image, :name, :price, :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id, presence: true
  validates :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: " : Please input 300~9999999" }
  validates :price, format: { with: /\A\d+\z/, message: "は半角数値のみ入力してください" }
end
