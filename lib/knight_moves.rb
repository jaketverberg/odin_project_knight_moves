class Knight

  def initialize(placement, coordinate)
    @placement = placement
    @coordinate = coordinate
  end

  MOVES = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
end

class Game_board

  def draw_board(n = 8)
    puts "  \e[4m                         \e[0m"
      until n == 0
        n -= 1
        puts "#{n} \e[4m| #{char(n, 0)} | #{char(n, 1)} | #{char(n, 2)} | #{char(n, 3)} | #{char(n, 4)} | #{char(n, 5)} | #{char(n, 6)} | #{char(n, 7)} |\e[0m"
      end
      puts "   0  1  2  3  4  5  6  7"
  end

  def char(coordinate, coordinate2)
    print "♞" if knight.placement == [coordinate, coordinate2]
    print " " if knight.placement != [coordinate, coordinate2]
  end
end