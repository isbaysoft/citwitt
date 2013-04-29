class HomesController < ApplicationController

  respond_to :html, :json

  def index
    @twitt = Twitter.user_timeline("gem")
  end
end
