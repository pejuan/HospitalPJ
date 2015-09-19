class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.integer :daysSpent
      t.string :roomNumber
      t.date :entryDate
      t.references :doctor, index: true, foreign_key: true
      t.float :cost

      t.timestamps null: false
    end
  end
end
