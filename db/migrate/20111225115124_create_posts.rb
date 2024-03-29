class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :body
      t.text :excerpt

      t.timestamps
    end
  end
  
  def self.down
   drop_table :posts
  end
end
