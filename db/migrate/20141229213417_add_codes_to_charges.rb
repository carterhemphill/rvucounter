class AddCodesToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :code_category, :string
    add_column :charges, :code_number, :integer
    add_column :charges, :code_rvu, :integer
  end
end
