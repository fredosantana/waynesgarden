class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :message
    	t.string :rating

    	t.integer :user_id
      t.timestamps
    end

    add_index :comments, [:user_id]
  end
end
