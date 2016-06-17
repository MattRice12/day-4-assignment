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
class Values
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
class Symbols
  attr_reader :symbol
  def initialize(symbol)
    @symbol = symbol
  end

  def Squares
    @symbol = []
    [].each do |value|
      @symbol << Values.new(value)
    end
  end

  def to_s
    """
  1    |2    |3
  #{@one}  |  #{@two}  |  #{@three}
  _____|_____|_____
  4    |5    |6
  #{@four}  |  #{@five}  |  #{@six}
  _____|_____|_____
  7    |8    |9
  #{@seven}  |  #{@eight}  |  #{@nine}
       |     |
   """
  end
end



# Board
  # - Data: Grid of 9 squares
  # - Behavior: holds squares
class Squares
  # attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    # @square = []
    #   [' ', 'X', 'Y'].each do |symbol|
    #     @square << Symbols.new(symbol)
    #   end
    @one = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @two = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @three = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @four = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @five = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @six = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @seven = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @eight = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end
    @nine = []
      [].each do |symbol|
        @square << Symbols.new(symbol)
      end

  end

end




class Board



  def initialize
  end




end


# Players
  # Data: Player, Computer
  # Behavior: Place symbols in squares on the board
class Players
  attr_reader :name
  def initialize(name)
    @name = name
  end

#Start
  # - each blank starts with " "
# def board
#   @square.each do

#Player
  # - Player auto-selects X

#Computer
  # - Computer auto-selects O
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
  def greeting
    puts "Get ready to play some Tic-Tac-Toe!!!"
  end

  def prompt(msg)
    print msg
    gets.chomp
  end


  def start
    greeting

    name = prompt("What is your name? ")
    @player = Players.new(name)    ####################### <<==
    @computer = Players.new("Hal_9000")
    puts "Hi #{@player}! You will be playing #{@computer}."
    puts


    @board = Board.new

    @move = Squares.new
  end


  def move
    @move = gets.chomp
    case @move
    when "1"
      @one << ("X")
    when "2"
      @two.push("X")
    end
  end
  require 'pry'; binding.pry

  # def player_move
  #   @player.symbol = @board.move
  # end
end

# require 'pry'; binding.pry
