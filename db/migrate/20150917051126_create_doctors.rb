class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :lastname
      t.date :birthdate
      t.string :specialty
      t.string :undergraduateUniversity
      t.string :specialtyUniversity
      t.float :cost
      t.belongs_to :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
