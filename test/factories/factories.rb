FactoryBot.define do
	factory :candidate do
		email { "jose@example.com" }
		first_name { "jose" }
		last_name { "example" }
		status { "review" }
	end
end
