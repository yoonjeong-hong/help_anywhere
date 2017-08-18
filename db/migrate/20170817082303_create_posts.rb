class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :region
      t.string :title
      t.text :content
      ##posts
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
