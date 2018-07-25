class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :Title
      t.text :Content
      t.belongs_to :user , index: true
      t.belongs_to :categorie , index: true ,optional: true
      t.timestamps
    end
  end
end
