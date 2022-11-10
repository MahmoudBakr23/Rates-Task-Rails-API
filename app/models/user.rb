class User < ApplicationRecord

  devise :database_authenticatable, :registerable

  validates :email, uniqueness: true, presence: true

  has_many :rates

  def generate_jwt
    JWT.encode({id: id, exp: 60.days.from_now.to_i}, Rails.application.secrets.secret_key_base)
  end
end
