class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :first
      t.string :last
      t.text :bio
      t.string :nameplate

      t.timestamps
    end
  end
end
