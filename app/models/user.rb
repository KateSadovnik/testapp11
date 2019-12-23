class User < ApplicationRecord
	has_many :microposts1s

	validates :name, :email, presence: true  
end
