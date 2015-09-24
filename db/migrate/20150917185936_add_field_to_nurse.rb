class AddFieldToNurse < ActiveRecord::Migration
  def change
    add_column :nurses, :id_number, :string
  end
end
