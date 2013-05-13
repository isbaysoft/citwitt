class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from Twitter::Error::TooManyRequests, :with => :handle_exception

  # Prevent Rate limit exceeded
  def handle_exception e
    @e = e
    render template: "shared/ratelimit", layout: false and return
  end

end
