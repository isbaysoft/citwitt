class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def create
    user = User.find_or_create_from_oauth request.env['omniauth.auth']
    user.persisted? ? sign_in_and_redirect(user) : redirect_to(root_url)
  end
  alias_method :twitter, :create

end
