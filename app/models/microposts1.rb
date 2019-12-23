class Microposts1 < ApplicationRecord
	belongs_to :user

	validates :content, length: { minimum: 1, maximum: 5 } 
end
