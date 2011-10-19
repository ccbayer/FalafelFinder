class CreatePosts < ActiveRecord::Migration
  def change
    drop_table :posts
    create_table :posts do |t|
      t.string :title
      t.text :postcontent
      t.string :type
      t.string :locationname
      t.string :address
      t.string :rating
      t.references :user
      t.timestamps
    end
      add_index :posts, :user_id
  end
end
