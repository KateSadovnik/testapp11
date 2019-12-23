class Microposts1 < ApplicationRecord
	belongs_to :user

	validates :content, length: { maximum: 5 }, presence: true 
end
