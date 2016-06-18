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



# values >> symbol >> squares >> board
  # Translation: Class of Symbols(' ', x, o), goes into class of  Squares (1-9), goes into class of Board (grid).


# ____________________________________________________________

# Symbols - I have a class of symbols. 3 symbols each with a different value (' ', x, o). These symbols go in a squares 1-9.
  # Data: 3 symbols (' ', x, o)
  # Behavior: Is placed within 1 of 9 squares
                  # class Values
                  #   attr_reader :value
                  #   def initialize(value)
                  #     @value = value
                  #   end
                  #
                  #   def to_s
                  #     "#{@symbol}"
                  #   end
                  #
                  # end
                  #
                  # # Squares -- I have a class of squares. 9 types of squares, each with a different value(1-9). Squares go into Board.new
                  #   # Data: 9 squares
                  #   # Behavior: holds symbols
                  # class Symbols
                  #   attr_reader :symbol
                  #   def initialize(symbol)
                  #     @symbol = symbol
                  #   end
                  #
                  #   def Squares
                  #     @symbol = []
                  #     [" "].each do |value|
                  #       @symbol << Values.new(value)
                  #     end
                  #   end
                  #
                  #
                  # end
