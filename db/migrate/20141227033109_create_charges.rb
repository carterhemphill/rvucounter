class CreateCharges < ActiveRecord::Migration
  create_table :charges do |t|
    t.float :pan
    t.float :rvu

    t.timestamps null: false
  end
end
