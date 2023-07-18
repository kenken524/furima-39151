class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_cost
  belongs_to :prefecture
  belongs_to :day_to_ship
  belongs_to :user
  has_one_attached :image

  validates :image, :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id, presence: true
  validates :name, presence: true, length: { maximum: 40 }
  validates :info, presence: true, length: { maximum: 1000 }
  validates :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id,
            numericality: { other_than: 1, message: "can't be blank" }
  validates :price, presence: true,
                    numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'Please input a price between 300 and 9999999' }
  validates :price, format: { with: /\A[0-9]+\z/ }
end
