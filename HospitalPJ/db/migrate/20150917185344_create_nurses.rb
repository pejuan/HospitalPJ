class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :name
      t.string :lastname
      t.date :birthdate
      t.string :undergraduateUniversity
      t.float :payPerHour

      t.timestamps null: false
    end
  end
end
