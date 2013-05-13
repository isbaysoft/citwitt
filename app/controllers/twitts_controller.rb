# coding: utf-8
class TwittsController < ApplicationController

  respond_to :json, :html

  def index
    @twitts = Twitter.user_timeline("@ciklum", count:3)
    respond_with @twitts
  end

end
