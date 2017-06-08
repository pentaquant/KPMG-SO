get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

post '/questions' do

  @question = Question.new(params[:question]) #create new question

  if @question.save #saves new question or returns false if unsuccessful
    redirect '/questions' #redirect back to questions index page
  else
    erb :'questions/new' # show new questions view again(potentially displaying errors)
  end

end
