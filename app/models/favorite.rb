class Favorite < ActiveRecord::Base
  attr_accessible :twitter_id, :user_id
  belongs_to :user
end
