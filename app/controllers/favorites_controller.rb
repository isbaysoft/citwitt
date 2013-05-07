class FavoritesController < AuthorizedController

  respond_to :json

  def index
    respond_with current_user.twitter_favorites
  end

  def create
    respond_with current_user.twitter_favorite(params[:favorite][:twitter_id]), location: root_url
  end

end
