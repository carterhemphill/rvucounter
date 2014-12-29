class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :number
      t.string  :category
      t.integer :rvu

      t.timestamps null: false
    end
  end
end
