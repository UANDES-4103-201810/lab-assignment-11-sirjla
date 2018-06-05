class User < ApplicationRecord
	validates :username, uniqueness: true
	validates :email, uniqueness: true
	validates :username, length: { maximum: 20 }
end
