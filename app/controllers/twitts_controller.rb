# coding: utf-8
class TwittsController < ApplicationController

  respond_to :json

  def index
    respond_with Twitter.user_timeline("@ciklum", count:3)
  end

end
