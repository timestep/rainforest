require 'faker'

FactoryGirl.define do
	factory :review do |f|
		f.comment { Faker::Lorem.paragraph } 
	end
end