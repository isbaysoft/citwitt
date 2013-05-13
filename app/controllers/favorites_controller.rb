class FavoritesController < AuthorizedController

  respond_to :js, :html

  def index
    @favorites = current_user.twitter_favorites
    respond_with @favorites
  end

  def create
    respond_with current_user.twitter_favorite(params[:twitt_id]), location: root_url
  end

  def destroy
    @favorite = current_user.twitter_unfavorite(params[:id].to_i)
    respond_with @favorite, location: favorites_url
  end

end
