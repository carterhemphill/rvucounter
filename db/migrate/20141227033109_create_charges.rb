class CreateCharges < ActiveRecord::Migration
  create_table :charges do |t|
    t.integer :pan
    t.decimal :code
    t.float :rvu

    t.timestamps null: false
  end
end
