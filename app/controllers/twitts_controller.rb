# coding: utf-8
class TwittsController < ApplicationController

  respond_to :json, :html, :js

  def index
    @curent_page = params[:page].to_i || 1
    @twitts = Twitter.user_timeline("@ciklum", page: @curent_page.succ)
    respond_with @twitts
  end

end
