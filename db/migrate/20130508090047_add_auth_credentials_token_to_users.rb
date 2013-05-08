class AddAuthCredentialsTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :auth_credentials_token, :string
    add_column :users, :auth_credentials_secret, :string
  end
end
