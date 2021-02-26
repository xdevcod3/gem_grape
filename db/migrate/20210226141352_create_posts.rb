class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :nom
      t.string :prenom
      t.string :nationalite
      t.string :dateN
      t.string :epouse
      t.text :enfants
      t.string :expresident
      t.text :bio
      t.string :partie
      t.string :sexe
      t.string :dateF
      t.string :dateC
      t.integer :age
      t.text :expP
      t.string :avatar

      t.timestamps
    end
  end
end
