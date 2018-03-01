class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.belongs_to :articles
      t.belongs_to :comments

      t.timestamps
    end
  end
end
