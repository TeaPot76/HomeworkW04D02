require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'json' )
require_relative( './models/game' )
require_relative( './models/computer' )
also_reload( './models/*' )


get '/play/:player' do
   computer = Computer.new
   @computer_choice = computer.get_choice
   @player_choice = params[:player]
   game = Game.new(@player_choice, @computer_choice)
  @game_result = game.play()
  erb( :result )
end

get '/' do
 erb (:home)
end
