FactoryBot.define do
  factory :jwt_blacklist do
    jti { "MyString" }
    exp { "2020-08-15 12:47:41" }
  end
end
