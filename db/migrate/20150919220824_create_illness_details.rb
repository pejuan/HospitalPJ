class CreateIllnessDetails < ActiveRecord::Migration
  def change
    create_table :illness_details do |t|
      t.string :mainSymptom
      t.date :dateSymptomAppeared
      t.string :calmsPain
      t.string :intensifiesPain
      t.time :peakHour
      t.references :patient, index: true, foreign_key: true
      t.references :hospitalization, index: true, foreign_key: true
      t.references :visit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
