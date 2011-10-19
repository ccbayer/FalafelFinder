class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :fname
      t.string :lname
      t.string :email
      t.references :post
      t.timestamps
    end
      add_index :comments, :post_id
  end
end
