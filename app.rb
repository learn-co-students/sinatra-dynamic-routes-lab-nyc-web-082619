require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = params[:word1], params[:word2],
             params[:word3], params[:word4], params[:word5]
    msg = ""
    @words.each do |word|
      msg += word + " "
    end
    msg
  end
  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @num3 = @num1.send(params[:operation], @num2)
    "#{@num3}"
  end
end
