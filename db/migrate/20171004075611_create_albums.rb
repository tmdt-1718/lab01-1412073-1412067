class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :creator
      t.integer :view
      t.string :coverphoto

      t.timestamps
    end
  end
end
