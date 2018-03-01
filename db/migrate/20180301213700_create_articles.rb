class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comments

      t.timestamps
    end
  end
end
