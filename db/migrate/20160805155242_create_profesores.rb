class CreateProfesores < ActiveRecord::Migration[5.0]
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.integer :telefono
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
