class Product < ActiveRecord::Base
	attr_accessible :description, :name, :price_in_cents, :id

	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:only_integer => true}
	validates :name, uniqueness: true
end
