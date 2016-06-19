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
         |       |
     #{@one}   |   #{@two}   |   #{@three}
  _______|_______|_______
         |       |
     #{@four}   |   #{@five}   |   #{@six}
  _______|_______|_______
         |       |
     #{@seven}   |   #{@eight}   |   #{@nine}
         |       |
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
    puts "You Win!"
    play_again
  end

  def victory_computer
    puts "Hal_9000 Wins!"
    play_again
  end

  def tie_conditions
    (@board.one == ("x" || "o")) &&
    (@board.two == ("x" || "o")) &&
    (@board.three == ("x" || "o")) &&
    (@board.four == ("x" || "o")) &&
    (@board.five == ("x" || "o")) &&
    (@board.six == ("x" || "o")) &&
    (@board.seven == ("x" || "o")) &&
    (@board.eight == ("x" || "o")) &&
    (@board.nine == ("x" || "o"))
  end

  def tie_message
      refresh_screen
      puts "You tied!"
      puts
      play_again
  end

  def play_again
    loop do
      puts
      response = prompt("Play again? > ")
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
    (@board.one == "x") && (@board.two == "x") && (@board.three == "x") ||
    (@board.one == "x") && (@board.five == "x") && (@board.nine == "x") ||
    (@board.one == "x") && (@board.four == "x") && (@board.seven == "x") ||
    (@board.two == "x") && (@board.five == "x") && (@board.eight == "x") ||
    (@board.three == "x") && (@board.five == "x") && (@board.seven == "x") ||
    (@board.three == "x") && (@board.six == "x") && (@board.nine == "x") ||
    (@board.four == "x") && (@board.five == "x") && (@board.six == "x") ||
    (@board.seven == "x") && (@board.eight == "x") && (@board.nine == "x")
  end

  def get_three_computer
    (@board.one == "o") && (@board.two == "o") && (@board.three == "o") ||
    (@board.one == "o") && (@board.five == "o") && (@board.nine == "o") ||
    (@board.one == "o") && (@board.four == "o") && (@board.seven == "o") ||
    (@board.two == "o") && (@board.five == "o") && (@board.eight == "o") ||
    (@board.three == "o") && (@board.five == "o") && (@board.seven == "o") ||
    (@board.three == "o") && (@board.six == "o") && (@board.nine == "o") ||
    (@board.four == "o") && (@board.five == "o") && (@board.six == "o") ||
    (@board.seven == "o") && (@board.eight == "o") && (@board.nine == "o")
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


      sleep(1)

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
          @board.one = "x"
        elsif move_player == "2" && @board.two == "2"
          @board.two = "x"
        elsif move_player == "3" && @board.three == "3"
          @board.three = "x"
        elsif move_player == "4" && @board.four == "4"
          @board.four = "x"
        elsif move_player == "5" && @board.five == "5"
          @board.five = "x"
        elsif move_player == "6" && @board.six == "6"
          @board.six = "x"
        elsif move_player == "7" && @board.seven == "7"
          @board.seven = "x"
        elsif move_player == "8" && @board.eight == "8"
          @board.eight = "x"
        elsif move_player == "9" && @board.nine == "9"
          @board.nine = "x"
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
      @board.one = "o"
      refresh_screen
      puts "Hal_9000 takes square 1"
      puts
    when "2"
      @board.two = "o"
      refresh_screen
      puts "Hal_9000 takes square 2"
      puts
    when "3"
      @board.three = "o"
      refresh_screen
      puts "Hal_9000 takes square 3"
      puts
    when "4"
      @board.four = "o"
      refresh_screen
      puts "Hal_9000 takes square 4"
      puts
    when "5"
      @board.five = "o"
      refresh_screen
      puts "Hal_9000 takes square 5"
      puts
    when "6"
      @board.six = "o"
      refresh_screen
      puts "Hal_9000 takes square 6"
      puts
    when "7"
      @board.seven = "o"
      refresh_screen
      puts "Hal_9000 takes square 7"
      puts
    when "8"
      @board.eight = "o"
      refresh_screen
      puts "Hal_9000 takes square 8"
      puts
    when "9"
      @board.nine = "o"
      refresh_screen
      puts "Hal_9000 takes square 9"
      puts
    end
  end
end

Game.new.start

# require 'pry'; binding.pry
