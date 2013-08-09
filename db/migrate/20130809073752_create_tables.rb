class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :email, unique: true, index: true
      t.string :password_hash
      t.timestamps
    end

    create_table :posts do |t|
      t.string :title, :index
      t.text :body
      t.belongs_to :user
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name, index: true, unique: true
      t.timestamps
    end

    create_table :tagbooks do |t|
      t.
    end
  end
end
