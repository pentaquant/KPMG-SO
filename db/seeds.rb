require 'faker'
if User.count < 10
    5.times do
      user = {}
      user[:username] = Faker::Internet.user_name(5..10)
      user[:password_hash] = "password"
      User.create(user)
  end
end
