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
      move_player

      system("Clear")
      puts "Welcome to Tic-Tac-Toe!"
      puts
      puts "Hi #{@player.name}! You will be playing #{@computer.name}."
      puts
      puts @board ####<=========== THIS IS WHAT RESETS THE SET!!!
      sleep(1)
      move_computer
      puts @board.one

    end
  end

  def updated_board

  end

  def display_board
    puts @board
  end

  def move_player
    loop do
    move_player = prompt("Please make a move > ")
      case move_player
      when "1" then @board.one = "X"
        break
      when "2" then @board.two = "X"
        break
      when "3" then @board.three = "X"
        break
      when "4" then @board.four = "X"
        break
      when "5" then @board.five = "X"
        break
      when "6" then @board.six = "X"
        break
      when "7" then @board.seven = "X"
        break
      when "8" then @board.eight = "X"
        break
      when "9" then @board.nine = "X"
        break
      else
        system("Clear")
        puts "Welcome to Tic-Tac-Toe!"
        puts
        puts "Hi #{@player.name}! You will be playing #{@computer.name}."
        puts
        puts @board #<============ THIS TOOOOOO!!! RESETS THE SET!
        puts "I'm sorry, I didn't catch that. "
        puts "________________________________"
        puts
      end
    end
      # Create a set of spaces that don't have "X". Computer can place O in a random one of these spaces.
  end

#######______________________________________
  # def computer_set
  #   computer_set = []
  #   if Board.new.one == "1"
  #     Board.new.one = ""
  #     computer_set << Board.new.one
  #   end
  #   if Board.new.two == "2"
  #     Board.new.two = ""
  #     computer_set << Board.new.two
  #   end
  #   if Board.new.three == "3"
  #     Board.new.three = ""
  #     computer_set << Board.new.three
  #   end
  #   if Board.new.four == "4"
  #     Board.new.four
  #     computer_set << Board.new.four
  #   end
  #   if Board.new.five == "5"
  #     Board.new.five
  #     computer_set << Board.new.five
  #   end
  #   if Board.new.six == "6"
  #     Board.new.six
  #     computer_set << Board.new.six
  #   end
  #   if Board.new.seven == "7"
  #     Board.new.seven
  #     computer_set << Board.new.seven
  #   end
  #   if Board.new.eight == "8"
  #     Board.new.eight
  #     computer_set << Board.new.eight
  #   end
  #   if Board.new.nine == "9"
  #     Board.new.nine
  #     computer_set << Board.new.nine
  #   end
  # end
  #
  # def move_computer
  #   move_computer = Game.new.computer_set.shuffle!
  #   case move_computer.pop
  #   when "1" then @board.one = "O"
  #   when "2" then @board.two = "O"
  #   when "3" then @board.three = "O"
  #   when "4" then @board.four = "O"
  #   when "5" then @board.five = "O"
  #   when "6" then @board.six = "O"
  #   when "7" then @board.seven = "O"
  #   when "8" then @board.eight = "O"
  #   when "9" then @board.nine = "O"
  #   end
  # end
#####______________________________________
  # require 'pry'; binding.pry

end

Game.new.start

# require 'pry'; binding.pry
