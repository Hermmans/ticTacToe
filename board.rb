class Board
def initialize (size)
    @grid = Array.new(size){Array.new(size,'_')}
end
def valid?(position)
    valid_positions = (0...@grid.length).to_a
        return false if !valid_positions.include?(position[0])
        return false if !valid_positions.include?(position[1])
        true
end
def empty?(position)
    return true if @grid[position[0]][position[1]] == '_'
    false
end
def place_mark(position,mark)
    return @grid[position[0]][position[1]] = mark if valid?(position) && empty?(position)
    raise 'The position you marked is either already marked or not valid'
end
def print
    @grid.each {|ele| puts ele.join(" ")}
    puts 
end
def win_row?(mark)
    vertical_win = @grid.transpose.any? {|ele| ele.uniq == [mark]}
    horizontal_win = @grid.any? {|ele| ele.uniq == [mark]}
    vertical_win || horizontal_win
end
def win_col?(mark)
    main_diagonal, anti_diagonal = [], []
    (0...@grid.length).each do |i|
        main_diagonal << @grid[i][i]
        anti_diagonal << @grid[i][-i - 1]
    end
    main_diagonal.uniq == [mark] || anti_diagonal.uniq == [mark]
end
def win?(mark)
    win_row?(mark) || win_col?(mark)
end
    def empty_positions?
        @grid.flatten.any?{|ele| ele == "_"}
    end
    def legal_positions
        emptys_a = []
(0...@grid.length).each { |ele_1| (0...@grid.length).each { |ele_2| emptys_a << [ele_1,ele_2] if self.empty?([ele_1, ele_2]) } }
    return emptys_a
    end
end

