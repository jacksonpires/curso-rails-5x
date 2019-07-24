class AddZipCodeToUserProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profiles, :zip_code, :string
  end
end
