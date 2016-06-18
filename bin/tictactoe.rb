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



# Board
  # - Data: Grid of 9 squares
  # - Behavior: holds squares
class Board
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    @one = one
    @two = two
    @three = three
    @four = four
    @five = five
    @six = six
    @seven = seven
    @eight = eight
    @nine = nine

  end

  def one
    ["1"].join
  end

  def two
    ["2"].join
  end

  def three
    ["3"].join
  end

  def four
    ["4"].join
  end

  def five
    ["5"].join
  end

  def six
    ["6"].join
  end

  def seven
    ["7"].join
  end

  def eight
    ["8"].join
  end

  def nine
    ["9"].join
  end

  def to_s
    """
       |     |
    #{@one}  |  #{@two}  |  #{@three}
  _____|_____|_____
       |     |
    #{@four}  |  #{@five}  |  #{@six}
  _____|_____|_____
       |     |
    #{@seven}  |  #{@eight}  |  #{@nine}
       |     |
   """
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
  def welcome
    puts "Welcome to Tic-Tac-Toe!"
    puts
    print "What would you like to be called? > "
    @name = gets.chomp
  end

  def greeting
    system("clear")
    puts "Welcome to Tic-Tac-Toe!"
    puts
    puts "Hi #{@player.name}! You will be playing #{@computer.name}."
    puts
  end

  def prompt(msg)
    print msg
    gets.chomp
  end

  def start
    system("clear")
    welcome
    @board = Board.new
    @player   = Players.new(@name)
    @computer = Players.new("Hal_9000")
    greeting
    display_board
    loop do
      move
      display_board
      system("Clear")
      puts "Welcome to Tic-Tac-Toe!"
      puts
      puts "Hi #{@player.name}! You will be playing #{@computer.name}."
      puts
      puts @board
    end
  end

  def display_board
    puts @board
  end

  def move
    loop do
    move = prompt("Please make a move > ")
      case move
      when "1"
        @board.one = "X"
        break
      when "2"
        @board.two = "X"
        break
      when "3"
        @board.three = "X"
        break
      when "4"
        @board.four = "X"
        break
      when "5"
        @board.five = "X"
        break
      when "6"
        @board.six = "X"
        break
      when "7"
        @board.seven = "X"
        break
      when "8"
        @board.eight = "X"
        break
      when "9"
        @board.nine = "X"
        break
      else
        system("Clear")
        puts "Welcome to Tic-Tac-Toe!"
        puts
        puts "Hi #{@player.name}! You will be playing #{@computer.name}."
        puts
        puts @board
        puts "I'm sorry, I didn't catch that. "
        puts "________________________________"
        puts
      end
    end

  end
  # require 'pry'; binding.pry

end

Game.new.start

# require 'pry'; binding.pry
