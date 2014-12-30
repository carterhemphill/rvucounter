class AddDescriptorToCharge < ActiveRecord::Migration
  def change
    add_column :charges, :descriptor, :text
  end
end
