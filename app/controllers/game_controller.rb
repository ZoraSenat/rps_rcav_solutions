class GameController < ApplicationController
  def user_plays_anything
    # params = { "move" => "rock" }

    @user_move = params["move"]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    render("user_plays_anything.html.erb")
  end
end
