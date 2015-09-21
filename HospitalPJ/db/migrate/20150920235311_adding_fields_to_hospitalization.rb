class AddingFieldsToHospitalization < ActiveRecord::Migration
  def change
  	add_column :hospitalizations, :payed, :boolean
  	add_reference :hospitalizations, :patient, index: true, foreign_key: true
  end
end
