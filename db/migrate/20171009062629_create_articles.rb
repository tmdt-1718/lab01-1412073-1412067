class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :creator
      t.integer :view
      t.string :coverphoto
      t.text :body
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
