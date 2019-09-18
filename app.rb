require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @phrase*@num 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    words = 
      params[:word1] + " " +
      params[:word2] + " " +
      params[:word3] + " " +
      params[:word4] + " " +
      params[:word5] + "." 

  end

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    if operation == "add"
      answer = num1 + num2 
    elsif operation == "subtract"
      answer = num1 - num2 
    elsif operation == "multiply"
      answer = num1 * num2 
    elsif operation == "divide"
      answer = num1/num2
    else
      "Error"
    end
    
    answer.to_s
  end

end