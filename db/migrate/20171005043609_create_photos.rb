class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :source
      t.string :creator
      t.integer :view
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
