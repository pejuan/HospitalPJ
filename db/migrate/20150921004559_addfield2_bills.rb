class Addfield2Bills < ActiveRecord::Migration
  def change
  	add_column :bills, :total, :float
  end
end
