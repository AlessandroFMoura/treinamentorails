class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :aluno_name
      t.string :email
      t.string :matricula
      # t.string :title

      t.timestamps
    end
  end
end
