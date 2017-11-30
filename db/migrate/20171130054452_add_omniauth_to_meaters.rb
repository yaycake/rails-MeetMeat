class AddOmniauthToMeaters < ActiveRecord::Migration[5.0]
  def change
    add_column :meaters, :provider, :string
    add_column :meaters, :uid, :string
    # add_column :meaters, :facebook_picture_url, :string
    # add_column :meaters, :first_name, :string
    # add_column :meaters, :last_name, :string
    # add_column :meaters, :current_city, :string
    # add_column :meaters, :education, :string
    # add_column :meaters, :token, :string
    # add_column :meaters, :token_expiry, :datetime
  end
end
