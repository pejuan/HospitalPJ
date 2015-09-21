class Addfield2hemogram < ActiveRecord::Migration
  def change
  	add_column :blood_tests, :payed, :boolean
  end
end
