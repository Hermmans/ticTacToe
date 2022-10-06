require_relative 'board.rb'
require_relative 'human_player.rb'
require_relative 'computePlayer.rb'
class Game
    attr_reader :current_player, :size
def initialize(size_of_game, player_mark)
    @size = size_of_game
    @board = Board.new(size_of_game)
    @players = []
        player_mark.each do |key ,value|
                if value == true
                  @players <<  ComputePlayer.new(key)
                else
                   @players << Human_player.new(key)
                end
        end
    @current_player = @players.rotate!(0)[0]
end
def switch_turn
   @current_player = @players.rotate![0]
end
def play
    while @board.empty_positions?
        @board.print
        @board.place_mark(@current_player.get_position(@board.legal_positions,@size),@current_player.mark)
return puts "#{@board.print}VICTORY!\n#{@current_player.mark} won!" if @board.win?(@current_player.mark)
            self.switch_turn
    end
    puts "draw! No one won!"
end
end
