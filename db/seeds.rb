require 'faker'
if User.count < 10
    10.times do
      user = {}
      user[:username] = Faker::Internet.user_name(5..10)
      user[:password_hash] = "password"
      User.create(user)
  end
end
if Question.count < 10
  10.times do
    question = {}
    question[:title] = Faker::Lorem.sentence
    question[:body] = Faker::Lorem.paragraph
    question[:user_id] = rand(1..10)
    Question.create(question)
  end 
end
if Answer.count < 10
  10.times do
    answer = {}
    answer[:answer] = Faker::Lorem.paragraph
    answer[:user_id] = rand(1..10)
    Answer.create(answer)
  end 
end
if Comment.count < 10
  10.times do
    comment = {}
    comment[:body] = Faker::Lorem.sentence
    comment[:user_id] = rand(1..10)
    Comment.create(comment)
  end 
end
