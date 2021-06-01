class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :email, presence: true   
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
end