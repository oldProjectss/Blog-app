class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.string :bio
      # t.date :created_at
      # t.date :updated_at
      t.decimal :posts_counter

      t.timestamps
    end
  end
end
