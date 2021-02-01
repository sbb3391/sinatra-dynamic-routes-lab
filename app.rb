require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
 
  get '/reversename/:name' do
    name = params[:name]
    reverse = name.reverse
    "#{reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    square = @number * @number
    "#{square}"
  end

  get "/say/:number/:phrase" do
    @the_phrase = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
   
    @number.times do
      @the_phrase += @phrase
      @the_phrase += "\n"
    end
    @the_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ") + "."

    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    end
    
  end
end