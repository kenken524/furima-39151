class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname,:birthday, presence: true
  
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角文字を使用してください' } do
    validates :first_name
    validates :last_name

  with_options presence: true, format: { with: /\A[ァ-ヶ一]+\z/, message: '全角文字(カタカナ)を使用してください' } do
    validates :first_name_kana
    validates :last_name_kana

end
