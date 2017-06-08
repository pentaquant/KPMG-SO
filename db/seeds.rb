require 'faker'
if User.count < 10
    5.times do
      user = {}
      user[:username] = Faker::Internet.user_name(5..10)
      user[:password_hash] = "password"
  end

if Question.count < 10
    5.times do
      question = {}
      question[:question] = Faker::Internet.user_name(5..10)
  end
end