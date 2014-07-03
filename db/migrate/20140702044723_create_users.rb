class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :lastname
      t.string :firstname
      t.string :rank
      t.string :role

      t.timestamps
    end
  end
end
