class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nic_name
      t.timestamps null: false
    end
  end
end
