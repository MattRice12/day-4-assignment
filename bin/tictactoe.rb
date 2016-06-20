# To do: Clean up Game.new >> Create classes for a lot of this stuff!
# Additions: Make a smarter computer.

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
           |         |
           |         |
      #{@one}    |    #{@two}    |    #{@three}
           |         |
  _________|_________|__________
           |         |
           |         |
      #{@four}    |    #{@five}    |    #{@six}
           |         |
  _________|_________|__________
           |         |
           |         |
      #{@seven}    |    #{@eight}    |    #{@nine}
           |         |
           |         |
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
    puts "CONGRATS! YOU WON!!!!!!!"
    play_again
  end

  def victory_computer
    puts "Hal_9000 Wins! Too bad, try again!"
    play_again
  end

  def tie_conditions
    (@board.one == ("X" || "O")) &&
    (@board.two == ("X" || "O")) &&
    (@board.three == ("X" || "O")) &&
    (@board.four == ("X" || "O")) &&
    (@board.five == ("X" || "O")) &&
    (@board.six == ("X" || "O")) &&
    (@board.seven == ("X" || "O")) &&
    (@board.eight == ("X" || "O")) &&
    (@board.nine == ("X" || "O"))
  end

  def tie_message
      refresh_screen
      print "YOU TIED!"
      puts
      play_again
  end

  def play_again
    loop do
      puts
      response = prompt("Would you like to try play again? (y)/(n) > ")
      if response == "y"
        Game.new.start
        break
      elsif response == "n"
        refresh_screen
        puts "Goodbye!"
        break
      else
        incorrect_input
      end
    end
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

      if tie_conditions
        tie_message
        break
      end

      refresh_screen

      sleep(0.6)

      move_computer

      if get_three_computer
        refresh_screen
        victory_computer
        break
      end

      if tie_conditions
        tie_message
        refresh_screen
        break
      end
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
    when "1"
      @board.one = "O"
      refresh_screen
      puts "Hal_9000 takes square 1"
      puts
    when "2"
      @board.two = "O"
      refresh_screen
      puts "Hal_9000 takes square 2"
      puts
    when "3"
      @board.three = "O"
      refresh_screen
      puts "Hal_9000 takes square 3"
      puts
    when "4"
      @board.four = "O"
      refresh_screen
      puts "Hal_9000 takes square 4"
      puts
    when "5"
      @board.five = "O"
      refresh_screen
      puts "Hal_9000 takes square 5"
      puts
    when "6"
      @board.six = "O"
      refresh_screen
      puts "Hal_9000 takes square 6"
      puts
    when "7"
      @board.seven = "O"
      refresh_screen
      puts "Hal_9000 takes square 7"
      puts
    when "8"
      @board.eight = "O"
      refresh_screen
      puts "Hal_9000 takes square 8"
      puts
    when "9"
      @board.nine = "O"
      refresh_screen
      puts "Hal_9000 takes square 9"
      puts
    end
  end
end

Game.new.start

# require 'pry'; binding.pry
