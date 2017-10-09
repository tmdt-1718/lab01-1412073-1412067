class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :creator
      t.string :source
      t.integer :view
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
