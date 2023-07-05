class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :family, null: false, foreign_key: true
      t.string :name
      t.string :surname
      t.date :birthday

      t.timestamps
    end
  end
end
