class AddNameToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :profile_name, :string
  end
end
