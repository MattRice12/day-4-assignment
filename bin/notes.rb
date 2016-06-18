class Board
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    @one = this_thing(one, "1")
    @two = this_thing(two, "2")
    @three = this_thing(three, "3")
    @four = this_thing(four, "4")
    @five = this_thing(five, "5")
    @six = this_thing(six, "6")
    @seven = this_thing(seven, "7")
    @eight = this_thing(eight, "8")
    @nine = this_thing(nine, "9")
  end

  def this_thing(n, v)
    def n
      unless @n == ("X" || "O")
        v
      end
    end
  end
end
