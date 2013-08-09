class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :email, unique: true, index: true
      t.string :password_hash
      t.timestamps
    end
    
    create_table :posts do |t|
      t.string :title, index: true, unique: true
      t.text :body
      t.belongs_to :user
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name, index: true, unique: true
      t.timestamps
    end

    create_table :tagbooks do |t|
      t.integer :tag_id
      t.integer :post_id
      t.timestamps
    end
  end
end
