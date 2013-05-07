class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :provider, :uid

  delegate :favorite, :favorites, to: 'twitter_client', prefix: 'twitter'



  def twitter_client
    Twitter.client
  end

  def self.find_or_create_from_oauth(auth)
    # trying find by provider and uid
    user = find_by_provider_and_uid auth['provider'], auth['uid']
    return user unless user.nil?

    # trying find by email
    email = build_email_from_oauth auth
    user = find_or_initialize_by_provider_and_email provider: auth['provider'], email: email
    return user if user.persisted?

    # creating new user
    user.apply_oauth auth
    user.save
    user
  end

  # Tries fetch email from OAuth hash, or builds fake
  # @param [OmniAuth::AuthHash] auth
  # @return [String]
  def self.build_email_from_oauth(auth)
    if emailless_providers.include? auth['provider'].to_sym
      'uid.%s@%s.fake' % [auth['uid'], auth['provider']]
    else
      auth['info']['email']
    end
  end

  # List of providers witch doesn't provide email by OAuth
  # @return [Array]
  def self.emailless_providers
    [:twitter]
  end

  # Applies data from +auth+ hash
  # @param [OmniAuth::AuthHash] auth
  def apply_oauth(auth)
    self.password = Devise.friendly_token[0..7]
    self.password_confirmation = password
    self.provider = auth['provider']
    self.uid = auth['uid']
  end

end
