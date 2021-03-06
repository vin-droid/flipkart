class Product < ActiveRecord::Base

	validates :title, uniqueness: true
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :image_url, allow_blank: true, format: { with: %r{\.gif|jpg|png}$i, 
														message: "must be a URL gor GIF,JPG,PNG image"}
end
