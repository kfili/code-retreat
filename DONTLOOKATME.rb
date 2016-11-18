

# chrombeo
class Cell

  attr_reader :alive; # make it so that we can read the value of alive

  def initialize(y, x, gameboard, alive = 0)
    @y = y
    @x = x
    @gameboard = gameboard
    @alive = alive
  end

  def step # so now step will call neighbor_sum
    # jam jam jam jam jam jam smoooooooooth jams
    if (self.neighbor_sum < 2 || self.neighbor_sum > 3)
      @alive = 0;
    elsif (self.neighbor_sum == 3)
      @alive = 1;
    end #broneroonie da best
  end

  def neighbor_sum
    sum_of_neighbors = # implicit return, so the sum will be returned when we call this method
    (@gameboard[@y - 1][@x - 1].alive + # get the value of alive from the cell at this location
    @gameboard[@y - 1][@x].alive +
    @gameboard[@y - 1][@x + 1].alive +
    @gameboard[@y][@x - 1].alive +
    @gameboard[@y][@x + 1].alive +
    @gameboard[@y + 1][@x - 1].alive +
    @gameboard[@y + 1][@x].alive +
    @gameboard[@y + 1][@x + 1].alive)
    # implicit return means that whatever is the LAST LINE of a function will be returned
    # technically this WHOLE BLOCK is one line ^
  end
  # checks
end
