class Review < ActiveRecord::Base
	belongs_to :product
	validates  :comment, :presence => true
	belongs_to :user
end
