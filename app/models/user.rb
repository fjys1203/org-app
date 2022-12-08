class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :blogs

  validates :password,  presence: true, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
  validates :last_name, presence: true,  format: {with:  /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
  validates :first_name, presence: true,   format: {with:  /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :nickname, presence: true
  validates :birthday, presence: true
end
