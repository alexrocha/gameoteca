class MainController < ApplicationController
  def index
  end

  def profile
  end

  def browse
    @games = Game.all
  end

  def details
  end

  def streams
  end

  def games
  end
end
