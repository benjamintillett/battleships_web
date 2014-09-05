class GameData
	
	attr_accessor :players

	def initialize
		@players = []
	end

	def delete!
		@players = []
	end
end


require 'sinatra/base'

class BattleShips < Sinatra::Base

	enable :sessions

	GAMEDATA = GameData.new

	before do 
		set_player_instance_variables
	end

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

	post '/delete_game' do 
		delete_game
		erb :delete
	end

	post '/game' do 
		"Let Battleships commence!"
	end


	def add_player_to_session
		session[:player] = params[:name]
	end

	def add_player_to_game_data
		GAMEDATA.players << params[:name]
		puts GAMEDATA.inspect
		set_player_instance_variables
	end 

	def registered?
		session[:player]
	end

	def delete_game
		GAMEDATA.delete!
		@player1 = nil
		@player2 = nil
	end

	def set_player_instance_variables
		@player1 = GAMEDATA.players[0]
		@player2 = GAMEDATA.players[1]
	end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
