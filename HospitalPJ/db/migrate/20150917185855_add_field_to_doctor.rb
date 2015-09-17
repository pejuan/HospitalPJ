class AddFieldToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :id_number, :string
  end
end
