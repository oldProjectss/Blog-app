class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :post_id
      t.text :text
      # t.date :updated_at
      # t.date :created_at

      t.timestamps
    end
    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
