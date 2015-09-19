class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :visitDate
      t.boolean :Hospitalized
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
