get '/questions' do
  @questions = Question.all

  erb :'questions/index'
end

get '/questions/:id/comment' do
  @question = Question.find(params[:id])
  erb :'comments/new'
end

get '/questions/new' do

  erb :'questions/new'
end

post '/questions' do
  @question = Question.new(params[:post])
  if @question.save
    redirect '/questions'
  else

    erb :'questions/new'
  end
end

get '/questions/:id' do
  @question = Question.find(params[:id])

  erb :'questions/show'
end

post '/questions/comments' do
  @question = Question.find(params[:id])
  @question.comments << Comment.new(params[post[:comment]])
  if @question.comments.save

    redirect "/questions/#{@question.id}"
  else

    erb :'comments/new'
  end

end

delete '/questions/:id' do
  @question = Question.find(params[:id])
  @question.destroy

  redirect '/questions'
end
