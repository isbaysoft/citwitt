class FavoritesController < AuthorizedController

  respond_to :json

  def index
    favorites = current_user.favorites.all
    respond_with favorites
  end

  def create
    favorite = current_user.favorites.create params[:favorite]
    respond_with favorite
  end

end
