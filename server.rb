require "sinatra"
require_relative "app/models/player"
require_relative "app/models/game"
require 'pry'

set :views, File.join(File.dirname(__FILE__), "app/views")

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe",
  expire_after: 86400
}

get '/' do
  # session[:player] = Player.new if session[:player].nil?
  session[:player] ||= Player.new
  erb :index
end

post '/new' do
  @weapon = params[:weapon]
  game = Game.new
  score = game.win_or_lose(@weapon)
  session[:cpu_weapon] = game.cpu
  case score
  when 0
  when -1, 2
    #Player loses
    session[:player].cpu_score += 1
  when 1,-2
    #Player wins
    session[:player].score += 1
  end
  erb :index
end

get '/reset' do
  session.clear
  redirect '/'
end
