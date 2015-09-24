class Addfield2biochem < ActiveRecord::Migration
  def change
  	add_column :blood_chemistry_tests, :payed, :boolean
  end
end
