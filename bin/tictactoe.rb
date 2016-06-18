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
class Turns
end

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

  def start
    system("clear")
    greeting
    display_board
    loop do
      move_player
      move_computer

      system("Clear")
      puts "Welcome to Tic-Tac-Toe!"
      puts
      puts "Hi #{@player.name}! You will be playing #{@computer.name}."
      puts
      puts @board
      sleep(0.5)

    end
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
        puts @board
        puts "I'm sorry, I didn't catch that. "
        puts "________________________________"
        puts
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
