class AddCargoToAlunos < ActiveRecord::Migration[7.0]
  def change
    add_reference :alunos, :cargo, foreign_key: true
  end
end
