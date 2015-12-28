class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :pow_probability
      t.integer :pow_amount

      t.timestamps null: false
    end
  end
end
