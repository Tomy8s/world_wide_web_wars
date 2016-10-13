require 'sinatra/base'
require_relative 'lib/player.rb'

class Battle < Sinatra::Base


  get '/play' do
    @attack = $attack
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  post '/attack' do
    Game.new.attack($player2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
