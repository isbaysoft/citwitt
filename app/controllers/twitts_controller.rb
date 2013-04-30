# coding: utf-8
class TwittsController < ApplicationController

  respond_to :json

  def index
    twitt = Twitter.user_timeline("@ciklum", count:1)
    dd = twitt.map &:attrs
    respond_with twitts: dd
  end

end
