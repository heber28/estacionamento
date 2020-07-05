class CreateMensalista < ActiveRecord::Migration[5.2]
  def change
    create_table :mensalista do |t|
      t.string :nome
      t.string :telefone

      t.timestamps
    end
  end
end
