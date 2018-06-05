FactoryBot.define do
	factory :user do
		email "jlassadi@miuandes.cl"
		username "jlassadi"
		password "1234567"
	end
	factory :message do
		user nil
		date '01-01-2018'
		content 'lalalala'
	end
end
