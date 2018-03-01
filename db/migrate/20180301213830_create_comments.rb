class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :message
      t.belongs_to :user
      t.belongs_to :article

      t.timestamps
    end
  end
end
