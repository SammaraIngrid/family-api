class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.references :mother, null: false, foreign_key: { to_table: :grandparents }
      t.references :father, null: false, foreign_key: { to_table: :grandparents }
      t.string :name
      t.string :surname
      t.date :birthday

      t.timestamps
    end
  end
end
