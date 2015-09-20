class AddFieldToMicrobiologist < ActiveRecord::Migration
  def change
    add_reference :microbiologists, :lab, index: true, foreign_key: true
  end
end
