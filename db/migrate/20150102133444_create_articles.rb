class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title,   null: false
      t.string :url,     null: false
      t.string :image,   null: false
      t.text   :body,    null: false

      t.timestamps null: false
    end
  end
end
