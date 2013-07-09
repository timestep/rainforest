require 'faker'

FactoryGirl.define do
	factory :user do |f|
		f.name { Faker::Name.name } 
		f.password { 'password' }
		f.password_confirmation { 'password' }
	end
end
