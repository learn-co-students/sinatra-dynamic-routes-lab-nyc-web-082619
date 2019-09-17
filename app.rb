require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse 
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    new_phrase = ""
    number.times do
      "#{new_phrase += phrase}"
    end
    new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    combine_word = 
      params[:word1] + " " + 
      params[:word2] + " " + 
      params[:word3] + " " +
      params[:word4] + " " +
      params[:word5] + "."
    
  end

  get '/:operation/:number1/:number2' do
    ope = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = 0
    case ope 
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    else
      "Error"
    end
    
    result.to_s
  end

end