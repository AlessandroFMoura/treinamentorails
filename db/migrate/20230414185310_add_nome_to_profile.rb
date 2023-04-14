class AddNomeToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :nome, :string
  end
end
