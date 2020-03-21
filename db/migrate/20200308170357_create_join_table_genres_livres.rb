class CreateJoinTableGenresLivres < ActiveRecord::Migration[5.2]
  def change
    create_join_table :genres, :livres do |t|
       t.index [:genre_id, :livre_id]
       t.index [:livre_id, :genre_id]
    end
  end
end
