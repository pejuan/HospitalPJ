class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.references :patient, index: true, foreign_key: true
      t.date :billDate
      t.float :hospitalizationCost
      t.float :hemogramCost
      t.float :doctorsPayment
      t.float :biochemistryCost
      t.references :visit, index: true, foreign_key: true
      t.references :hospitalization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
