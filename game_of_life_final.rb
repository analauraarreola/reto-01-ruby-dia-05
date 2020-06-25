require 'Matrix'

class CreatesBoard
    def initialize
        @board = Matrix.build(5){rand(0..1)}
    end
    def print_board
        @board
    end
    
    def iteration
        @board.each  do |i| 
            puts i
            #¿cuáles células están vivas?
        end
    end
    def neighbours(row, column) #Analizando los vecinos de cada célula
        neighbours = []
        neighbours.push(@board[row-1, column]) if inside_board?(row-1, column)
        neighbours.push(@board[row-1, column+1]) if inside_board?(row-1, column+1)
        neighbours.push(@board[row, column+1]) if inside_board?(row, column+1)
        neighbours.push(@board[row+1, column+1]) if inside_board?(row+1, column+1)
        neighbours.push(@board[row+1, column]) if inside_board?(row+1, column)
        neighbours.push(@board[row+1, column-1]) if inside_board?(row+1, column-1)
        neighbours.push(@board[row, column-1]) if inside_board?(row, column-1)
        neighbours.push(@board[row-1, column-1]) if inside_board?(row-1, column-1)
        neighbours.count(1)
puts neighbours.count
    end
end
new_board = CreatesBoard.new
puts new_board.print_board
new_board.iteration
