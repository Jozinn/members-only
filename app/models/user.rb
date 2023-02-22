class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    validates :email, presence: true, uniqueness: true
    #validates :username, presence: true, uniqueness: true
    validates :encrypted_password, presence: true, length: {minimum: 8}
    has_many :posts
end
