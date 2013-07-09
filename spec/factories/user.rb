require 'faker'

FactoryGirl.define do
	factory :user do |f|
		f.name { Faker::Name.name } 
		f.password { Faker::Base.bothify('password')}
	end
end