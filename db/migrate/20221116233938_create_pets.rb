class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.boolean :adopted?
      t.integer :adopter_id
      t.integer :shelter_id
    end
  end
end
