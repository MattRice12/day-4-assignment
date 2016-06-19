# Board
  # - Data: Grid of 9 squares
  # - Behavior: holds squares
class Board
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    @one = "1"
    @two = "2"
    @three = "3"
    @four = "4"
    @five = "5"
    @six = "6"
    @seven = "7"
    @eight = "8"
    @nine = "9"
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
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

# Turns
  # Data: Player turn, Computer turn
  # Behavior: alternate
# class Winning
#   def initialize
#     @board = Game.new.start.board
#     @player = Players.new(@name)
#   end
#
#   def get_three
#     (@board.one == "X")
#     # && (@board.two == "X") && (@board.three == "X")
#   end
#
# end

# Score
  # Data: sub-Board
  # Behavior: Holds wins, losses, ties
class Score
end

# Game
class Game
  attr_reader :name
  def initialize
    @board = Board.new
    @name = welcome
    @player   = Players.new(@name)
    @computer = Players.new("Hal_9000")
  end

  def welcome
    system("clear")
    puts "Welcome to Tic-Tac-Toe!"
    puts
    print "What would you like to be called? > "
    gets.chomp
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

  def victory_player
    puts "#{@player.name} Wins!"
    system("break")
  end

  def victory_computer
    puts "Hal_9000 Wins!"
    system("break")
  end

  def get_three_player
    (@board.one == "X") && (@board.two == "X") && (@board.three == "X") ||
    (@board.one == "X") && (@board.five == "X") && (@board.nine == "X") ||
    (@board.one == "X") && (@board.four == "X") && (@board.seven == "X") ||
    (@board.two == "X") && (@board.five == "X") && (@board.eight == "X") ||
    (@board.three == "X") && (@board.five == "X") && (@board.seven == "X") ||
    (@board.three == "X") && (@board.six == "X") && (@board.nine == "X") ||
    (@board.four == "X") && (@board.five == "X") && (@board.six == "X") ||
    (@board.seven == "X") && (@board.eight == "X") && (@board.nine == "X")
  end

  def get_three_computer
    (@board.one == "O") && (@board.two == "O") && (@board.three == "O") ||
    (@board.one == "O") && (@board.five == "O") && (@board.nine == "O") ||
    (@board.one == "O") && (@board.four == "O") && (@board.seven == "O") ||
    (@board.two == "O") && (@board.five == "O") && (@board.eight == "O") ||
    (@board.three == "O") && (@board.five == "O") && (@board.seven == "O") ||
    (@board.three == "O") && (@board.six == "O") && (@board.nine == "O") ||
    (@board.four == "O") && (@board.five == "O") && (@board.six == "O") ||
    (@board.seven == "O") && (@board.eight == "O") && (@board.nine == "O")
  end

  def refresh_screen
    system("Clear")
    puts "Welcome to Tic-Tac-Toe!"
    puts
    puts "Hi #{@player.name}! You will be playing #{@computer.name}."
    puts
    puts @board
  end

  def incorrect_input
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

  def space_taken
    system("Clear")
    puts "Welcome to Tic-Tac-Toe!"
    puts
    puts "Hi #{@player.name}! You will be playing #{@computer.name}."
    puts
    puts @board
    puts "I'm sorry, that space is taken. Please select another space. "
    puts "________________________________"
    puts
  end

  def start
    system("clear")
    greeting
    display_board
    loop do
      move_player
      if get_three_player
        refresh_screen
        victory_player
        break
      end

      move_computer
      if get_three_computer
        refresh_screen
        victory_computer
        break
      end
      refresh_screen

      sleep(0.5)
    end
  end

  def display_board
    puts @board
  end



  def move_player
    loop do
    move_player = prompt("Please make a move > ")
    if
      if move_player == "1" && @board.one == "1"
        @board.one = "X"
      elsif move_player == "2" && @board.two == "2"
        @board.two = "X"
      elsif move_player == "3" && @board.three == "3"
        @board.three = "X"
      elsif move_player == "4" && @board.four == "4"
        @board.four = "X"
      elsif move_player == "5" && @board.five == "5"
        @board.five = "X"
      elsif move_player == "6" && @board.six == "6"
        @board.six = "X"
      elsif move_player == "7" && @board.seven == "7"
        @board.seven = "X"
      elsif move_player == "8" && @board.eight == "8"
        @board.eight = "X"
      elsif move_player == "9" && @board.nine == "9"
        @board.nine = "X"
      end
      break
    else
      case move_player
      when "1" then space_taken
      when "2" then space_taken
      when "3" then space_taken
      when "4" then space_taken
      when "5" then space_taken
      when "6" then space_taken
      when "7" then space_taken
      when "8" then space_taken
      when "9" then space_taken
      else
        incorrect_input
      end
    end

  end

      # Create a set of spaces that don't have "X". Computer can place O in a random one of these spaces.
  end

  def make_computer_set
    computer_set = []
    if @board.one == "1" then computer_set << "1"
    end
    if @board.two == "2" then computer_set << "2"
    end
    if @board.three == "3" then computer_set << "3"
    end
    if @board.four == "4" then computer_set << "4"
    end
    if @board.five == "5" then computer_set << "5"
    end
    if @board.six == "6" then computer_set << "6"
    end
    if @board.seven == "7" then computer_set << "7"
    end
    if @board.eight == "8" then computer_set << "8"
    end
    if @board.nine == "9" then computer_set << "9"
    end
    computer_set.shuffle!
  end

  def move_computer
    computer_set = make_computer_set
    case computer_set.pop
    when "1" then @board.one = "O"
    when "2" then @board.two = "O"
    when "3" then @board.three = "O"
    when "4" then @board.four = "O"
    when "5" then @board.five = "O"
    when "6" then @board.six = "O"
    when "7" then @board.seven = "O"
    when "8" then @board.eight = "O"
    when "9" then @board.nine = "O"
    end
  end
  # require 'pry'; binding.pry

end

Game.new.start

# require 'pry'; binding.pry
