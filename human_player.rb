
class Human_player
    attr_reader :mark
    def initialize(mark_value)
    @mark = mark_value
    end
    def get_position(legal_positions,size)
        puts"Player #{@mark}, please enter a position in the format 'row col'"
        user_input= gets.chomp
        move = user_input.split(" ").map(&:to_i)
        until legal_positions.include?(move)
            puts "That move was illegal please enter a valid move"
            user_input= gets.chomp
        move = user_input.split(" ").map(&:to_i)
        end 
        move 
    end
end