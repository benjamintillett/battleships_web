class GameData
	
	attr_accessor :players

	def initialize
		@players = []
	end
end


require 'sinatra/base'

class BattleShips < Sinatra::Base

	enable :sessions

	GAMEDATA = GameData.new


	get '/' do
		erb :index
	end

	get '/register_player' do 
		erb :register_player	
	end

	post '/player' do
		add_player_to_session
		add_player_to_game_data
		@message = "Congratulations #{session[:player]}, you have joined the game"
		erb :player
	end

	def add_player_to_session
		session[:player] = params[:name]
	end

	def add_player_to_game_data
		GAMEDATA.players << session[:player]
	end 



  # start the server if ruby file executed directly
  run! if app_file == $0
end
