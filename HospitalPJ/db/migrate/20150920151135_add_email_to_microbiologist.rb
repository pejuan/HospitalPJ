class AddEmailToMicrobiologist < ActiveRecord::Migration
  def change
    add_column :microbiologists, :email, :string
  end
end
