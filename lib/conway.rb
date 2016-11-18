class Cell

  attr_reader :alive;

  def step
    if (neighbor_sum < 2 || neighbor_sum > 3)
      @alive = 0
    else
      @alive = 1
    end
  end

end
