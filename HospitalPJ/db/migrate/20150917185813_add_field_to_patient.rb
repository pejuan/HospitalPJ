class AddFieldToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :id_number, :string
  end
end
