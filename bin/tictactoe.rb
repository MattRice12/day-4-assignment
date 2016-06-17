# Tic-Tac-Toe

# Board with 9 squares
# 2 players, X and O


# classes:
  # - Board
    # - Set up grid

  # - Squares
    # - Assign values to squares (1-9)

  # - Symbols (types, values)
    # - type - X
    # - type - O
    # - behavior -
      # Go in squares
      # When 3 line up = wins
        # - Ex: # if 1 == x + 4 == x + 7 == x
                  # player 1 wins!
                # end
            # Ex: # if x[] includes 1, 4, 7 == true
                    # player 1 wins!
                  # end
            # Ex: # case x[]
                  # when include? 1, 4, 7
                    # puts player 1 wins!
                  # when include? 2, 5, 8
                    # puts player 1 wins!
                  # end
            # Ex: case x[]
                  # when include? [1, 4, 7], [2, 5, 8], [3, 6, 9], etc
                    # player 1 wins!
                  # end

  # - Players
    # - Player
    # - Computer
      # - Beginner: Randomly chooses an unused square 1-9
      # - Advanced: Tries to get 3 in a row
        # Ex: if [1, 4, 7]include != x
                # computer puts an O in 1 of them
              # end
              # need to account for the situation where no 3 in a row exist.
      # Tries to block player's 3 in a row

  # - Turns
    # - Who goes first?
      # - Player by default?
      # - Winner of last game?

  # - Score
    # - Wins:
    # - Losses:
    # - Ties:

  # - Game
    # - Play
    # - Reset
    # - error if you type a wrong square

# ___________________________________________________________



# symbol >> squares >> board
  # Translation: Class of Symbols(' ', x, o), goes into class of  Squares (1-9), goes into class of Board (grid).


# ____________________________________________________________

# Symbols - I have a class of symbols. 3 symbols each with a different value (' ', x, o). These symbols go in a squares 1-9.
  # Data: 3 symbols (' ', x, o)
  # Behavior: Is placed within 1 of 9 squares
class Symbols
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def to_s
    "#{@symbol}"
  end

end

# Squares -- I have a class of squares. 9 types of squares, each with a different value(1-9). Squares go into Board.new
  # Data: 9 squares
  # Behavior: holds symbols
class Squares
  def initialize
    @symbol = []
    [' ', "X", "Y"].each do |value|
      @symbol << Symbols.new(value)
    end
  end
  require 'pry'; binding.pry

end

# Board
  # - Data: Grid of 9 squares
  # - Behavior: holds squares
class Board
  def initialize
    @square = Squares.new

    # @square = []
    # [].each do |symbol|
    #   @square << Squares.new
  end

  def square
    @square
  end

  def to_s
    """
  1    |2    |3
    #{@symbol}  |  #{@symbol}  |  #{@symbol}
  _____|_____|_____
  4    |5    |6
    #{@symbol}  |  #{@symbol}  |  #{@symbol}
  _____|_____|_____
  7    |8    |9
    #{@symbol}  |  #{@symbol}  |  #{@symbol}
       |     |
   """
  end

end

Board.new






# Players
  # Data: Player, Computer
  # Behavior: Place symbols in squares on the board
class Players
end




# Turns
  # Data: Player turn, Computer turn
  # Behavior: alternate
class Turns
end




# Score
  # Data: sub-Board
  # Behavior: Holds wins, losses, ties
class Score
end

# Game
class Game
end

# require 'pry'; binding.pry
