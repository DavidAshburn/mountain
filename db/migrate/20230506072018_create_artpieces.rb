class CreateArtpieces < ActiveRecord::Migration[7.0]
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :asset
      t.integer :artist_id

      t.timestamps
    end
  end
end
