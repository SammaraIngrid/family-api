class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :mother, null: false, foreign_key: { to_table: :parents }
      t.references :father, null: false, foreign_key: { to_table: :parents }
      t.string :name
      t.string :surname
      t.date :birthday

      t.timestamps
    end
  end
end
