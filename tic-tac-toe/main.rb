class Board
    def initialize()
        @array = Array.new(3) { Array.new(3, " ") }
    end
    attr_reader :array
    def print_board()
        puts " #{@array[0][0]} | #{@array[0][1]} | #{@array[0][2]} "
        puts "---+---+---"
        puts " #{@array[1][0]} | #{@array[1][1]} | #{@array[1][2]} "
        puts "---+---+---"
        puts " #{@array[2][0]} | #{@array[2][1]} | #{@array[2][2]} "
    end
    def edit_board(row, col, char)
        @array[row][col] = char
    end
    def row_win(symbol)
        for j in 0...3
            count = 0
            for i in 0...3
                char = @array[j][i]
                if char == symbol
                    count += 1
                end
            end
            if count == 3
                return true
            end
        end
        return false
    end
    def col_win(symbol)
        for j in 0...3
            count = 0
            for i in 0...3
                char = @array[i][j]
                if char == symbol
                    count += 1
                end
            end
            if count == 3
                return true
            end
        end
        return false
    end
    def diag_win(symbol)
        count1, count2 = 0, 0
        flag1, flag2 = false
        for i in 0...3
            char1 = @array[i][i]
            char2 = @array[2-i][i]
            if char1 == symbol
                count1 += 1
            end
            if char2 == symbol
                count2 += 1
            end
        if count1 == 3
            flag1 = true
        end
        if count2 == 3
            flag2 = true
        end
        return flag1 || flag2
    end
end

class Player

end

class Opp

end


def main()
    board = Board.new()
    puts board.print_board()
    
end

main()