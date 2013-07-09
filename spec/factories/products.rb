require 'faker'

FactoryGirl.define do
	factory :product do |f|
		f.name { Faker::Name.name} 
		f.description { Faker::Lorem.sentence }
		f.price_in_cents { rand(10000) }
	end
end