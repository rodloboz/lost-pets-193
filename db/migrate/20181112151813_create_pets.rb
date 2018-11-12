class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :species
      t.datetime :found_on
      t.boolean :found, default: false, null: false

      t.timestamps
    end
  end
end
