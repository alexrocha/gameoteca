class BrowseController < ApplicationController
  before_action :load_resources, only: [:index, :search]

  def index
    @games = Game.all
  end

  def search
    @games = filter_games
    render :index
  end

  private

  def search_params
    params.require(:filter).permit(:title, :platform_id, :genre_id)
  end

  def filter_games
    games = Game.includes(:genres, :platforms)
    games = games.where('games.title ilike ?', "%#{search_params[:title]}%") if search_params[:title].present?
    games = games.where(genres: { id: search_params[:genre_id] }) if search_params[:genre_id].present?
    games = games.where(platforms: { id: search_params[:platform_id] }) if search_params[:platform_id].present?
    games
  end

  def load_resources
    @platforms = Platform.all.order(:name)
    @genres = Genre.all.order(:title)
  end
end
