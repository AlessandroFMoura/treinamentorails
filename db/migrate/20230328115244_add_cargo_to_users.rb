class AddCargoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :cargo, foreign_key: true
  end
end
