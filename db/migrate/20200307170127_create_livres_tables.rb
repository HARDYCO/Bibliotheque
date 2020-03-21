class CreateLivresTables < ActiveRecord::Migration[5.2]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.string :codebarre
      t.text :description
    end
  end
end
