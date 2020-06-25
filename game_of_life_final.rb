require 'Matrix'

class CreatesBoard
    def initialize
        @board = Matrix.build(5){rand(0..1)}
    end
    def print_board
        @board
    end
    
    def iteration
        @board.each_with_index  do |i,position| 
            puts "La posición #{position} tiene el valor #{i}"
            #¿cuáles células están vivas?
        end
    end

    def status
        @board.include?(1) #Este sirve para evaluar las celulas vivas de cada posición
    end

    def inside_board?(row,column)
        row < @size && row >= 0 && column < @size && column >= 0
         end
    
    def neighbours(row, column) #Analizando los vecinos de cada célula
    neighbours = []
    case neighbours
    when neighbours.push(@board[row-1, column])   == inside_board?(row-1, column)
    when neighbours.push(@board[row-1, column+1]) == inside_board?(row-1, column+1)
    when neighbours.push(@board[row, column+1])   == inside_board?(row, column+1) 
    when neighbours.push(@board[row+1, column+1]) == inside_board?(row+1, column+1)
    when neighbours.push(@board[row+1, column])   == inside_board?(row+1, column) 
    when neighbours.push(@board[row+1, column-1]) == inside_board?(row+1, column-1)
    when neighbours.push(@board[row, column-1])   == inside_board?(row, column-1) 
    when neighbours.push(@board[row-1, column-1]) == inside_board?(row-1, column-1)
        neighbours.count(1)
    end
  end
end
new_board = CreatesBoard.new
puts new_board.print_board
new_board.iteration

