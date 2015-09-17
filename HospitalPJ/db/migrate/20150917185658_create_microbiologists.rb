class CreateMicrobiologists < ActiveRecord::Migration
  def change
    create_table :microbiologists do |t|
      t.string :id_number
      t.string :name
      t.string :lastname
      t.date :birthdate
      t.string :undergraduateUniversity
      t.string :postGraduateUniversity

      t.timestamps null: false
    end
  end
end
