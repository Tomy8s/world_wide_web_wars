require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  get '/play' do
    @game = $game
    @player1 = $game.player_1
    @player2 = $game.player_2
    erb(:play)
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    # player_1 = Player.new(params[:player1])
    # player_2 = Player.new(params[:player2])
    # $game = Game.new(player_1, player_2)
    $game = Game.new(params[:player1], params[:player2])
    redirect '/play'
  end

  post '/attack' do
    $game.attack
    redirect '/play'
  end

  post '/switch' do
    $game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
