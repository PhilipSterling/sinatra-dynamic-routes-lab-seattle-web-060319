require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do 
    @return = ""
    params[:number].to_i.times do
      @return << params[:phrase] + " "
    end
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1] + " "+ params[:word2] +" "+ params[:word3] +" "+ params[:word4] +" "+ params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do 
    return_int = 0
    if params[:operation] == "add"
      return_int = params[:number1].to_i + params[:number2].to_i 
    elsif params[:operation] == "subtract"
      return_int = params[:number1].to_i - params[:number2].to_i 
    elsif params[:operation] == "multiply"
      return_int = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      return_int = params[:number1].to_i / params[:number2].to_i
    else
      return_int.to_s = "Not a valid"
    end
    return_int.to_s
  end

end