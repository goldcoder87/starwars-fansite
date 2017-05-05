class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :episode_id
      t.string :director
      t.string :characters
      t.timestamps
    end
  end
end
