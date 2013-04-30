class UsersController < AuthorizedController

  respond_to :json

  def show
    respond_with User.find_by_id(params[:id])
  end

end

