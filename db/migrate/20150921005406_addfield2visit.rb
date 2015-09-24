class Addfield2visit < ActiveRecord::Migration
  def change
  	add_column :visits, :payed, :boolean
  end
end
