class Api::MyExamplesController < ApplicationController

  def fortune_action
    fortunes = [
      "You will die in 7 days",
      "You will become rich!",
      "You will become poor",
      "You will make a friend this week"
    ]
    @fortune = fortunes.sample
    render 'fortune.json.jb'
  end

  def lotto_action
    @numbers = []
    6.times do
      @numbers << rand(1...60)
    end
    render 'lotto.json.jb'
  end

  def count_action
    @count = 0
    @count += 1 #does not work
    render 'count.json.jb'
  end

end
