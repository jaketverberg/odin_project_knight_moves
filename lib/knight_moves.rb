class Knight

  MOVES = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
end

class Game_board

  def draw_board(n = 8)
    puts "\e[4m                                "
    until n == 0
      n -= 1
      puts "|\e[4m #{} | #{} | #{} | #{} | #{} | #{} | #{} | #{} |"
    end
  end


end