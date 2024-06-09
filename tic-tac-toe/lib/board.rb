class Board
    def initialize()
        @array = Array.new(3) { Array.new(3) }
    end
    def print_board()
        puts " #{@array[0][0]} | #{@array[0][1]} | #{@array[0][2]} "
        puts "---------"
        puts " #{@array[1][0]} | #{@array[1][1]} | #{@array[1][2]} "
        puts "---------"
        puts " #{@array[2][0]} | #{@array[2][1]} | #{@array[2][2]} "
    end
    def edit_board=(array, row, col)

    end
end

def main()
    board = Board.new()
    puts board.print_board()
end

main()