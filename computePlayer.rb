class ComputePlayer
        attr_reader :mark
        def initialize(mark_value)
        @mark = mark_value
        end
    # def get_position(legal_positions)
    #     legal_positions.sample
    #     end
    # end
    #the issue with this code is that the computer tends to the same thing
    #so if you were to have it play tic tac toe by itself with another robot
    #you will get the same result 
    #but if you want different answers and outcomes do the following 
    def get_position(legal_positions,size)
        #adjust the rang to whatever works best for the code 
    move = [rand(0..size),rand(0..size)]
    until legal_positions.include?(move)
    move = [rand(0..10),rand(0..10)]
    end 
    move 
    end
end