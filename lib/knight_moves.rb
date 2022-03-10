class Knight
  attr_reader :position, :parent

  MOVES = [[1, 2], [1, -2], [-1, 2], [-1, -2],
          [2, 1], [-2, 1], [2, -1], [-2, -1]].freeze
  @@history = []

  def initialize(placement, parent)
    @position = placement
    @parent = parent
    @@history.push(@position)
  end

  def node_tree
    MOVES.map( |m| [@position[0], @position[1]] )
         .keepif { |e| Kight.valid?(e) }
         .reject { |e| @@history.include?(e) }
         .map { |e| Knight.new(e, self)  }
  end

  def valid?(position)
    position[0].between?(0, 7) && position[1].between?(0, 7)
  end
end

def display_parent(node)
  display_parent(node.parent) unless node.parent.nil?
  p node.position
end

def knight_moves(start, end_position)
  queue = []
  knight = Knight.new(start, nil)
  until knight.position == end_position
    knight.node_tree.each { |child| queue.push(child) }
    knight.position = queue.shift
  end

  display_parent(knight)
end

knight_moves([0, 0], [7, 7])