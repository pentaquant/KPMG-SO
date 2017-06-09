get '/questions/:id/comments' do
  @questions = Question.all

  erb :'questions/index'
end

get '/questions/new' do

erb :'questions/new'
end

get '/questions/:id' do
  @question = Question.find(params[:id])

  erb :'questions/show'
end



post '/questions' do
  @question = Question.new(params[:post])
  if @question.save
    redirect '/questions'
  else

    erb :'questions/new'
  end

end

delete '/questions/:id' do
  @question = Question.find(params[:id])
  @question.destroy




get '/comments/new' do
  @answer = Answer.find(params[:id])
  @question = Question.find(params[:id])

  erb :'comments/new'
end

post '/comments' do
  @question.comments << Comment.new(params[post[:comment]])
  @answer.comments << Comment.new(params[post[:comment]])


  if @question.comments.save

    redirect "/questions/#{@question.id}"
  else

    erb :'comments/new'
  end

end

post '/comments/answers' do


  if @question.comments.save

    redirect "/questions/#{@question.id}"
  else

    erb :'comments/new'
  end

end



delete '/comments/:id' do
  @answer = Answer.find(params[:id])
  @answer.destroy
  question = @answer.question
  redirect "/questions/#{question.id}"
end
