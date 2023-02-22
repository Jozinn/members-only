class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end