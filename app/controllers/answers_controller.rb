
get '/answers/new' do

  erb :'answers/new'
end

post '/answers' do
  @question = Question.find(params[:id])
  @question.answers << Answer.new(params[post[:answer]])
  if @question.answers.save

    redirect "/questions/#{@question.id}"
  else

    erb :'answers/new'
  end

end

delete '/answers/:id' do
  @answer = Answer.find(params[:id])
  @answer.destroy
  question = @answer.question
  redirect "/questions/#{question.id}"
end
