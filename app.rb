require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do 
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get "/square/:number" do 
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do 
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do 
    number1 = params[:number1].to_i 
    number2 = params[:number2].to_i
    
    if params[:operation] == 'add'
      answer = (number1 + number2).to_s
    elsif params[:operation] == 'subtract'
      answer = (number1 - number2).to_s
    elsif params[:operation] == 'multiply'
      answer = (number1 * number2).to_s
    elsif params[:operation] == 'divide'
      answer = (number1 / number2).to_s
    else
      answer = 'unable to complete operation'
    end
  end
end