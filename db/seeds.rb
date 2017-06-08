require 'faker'
if User.count < 10
    5.times do
      user = {}
      user[:username] = Faker::Internet.user_name(5..10)
      user[:email] = Faker::Internet.safe_email
      user[:password_hash] = "password"
  end
end