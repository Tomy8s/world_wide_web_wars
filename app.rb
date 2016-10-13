require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/play' do
    @player1 = @game.player_1
    @player2 = @game.player_2
    erb(:play)
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create(params[:player1], params[:player2], params[:is_computer])
    redirect '/play'
  end

  post '/attack' do
    if params[:hp]
      @game.attack(params[:hp].to_i)
    else
      @game.attack
    end
    redirect '/play'
  end

  post '/switch' do
    @game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0


end
