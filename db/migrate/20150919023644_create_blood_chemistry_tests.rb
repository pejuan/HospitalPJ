class CreateBloodChemistryTests < ActiveRecord::Migration
  def change
    create_table :blood_chemistry_tests do |t|
      t.float :glucose
      t.float :urea
      t.float :uric_acid
      t.float :creatinine
      t.float :cholesterol
      t.float :hdl
      t.float :ldl
      t.float :triglycerides
      t.float :got
      t.float :gpt
      t.float :ggt
      t.float :alkaline_phosphatase
      t.float :calcium
      t.float :iron
      t.float :potassium
      t.float :sodium
      t.float :bilirubin
      t.date :test_date
      t.references :patient, index: true, foreign_key: true
      t.references :microbiologist, index: true, foreign_key: true
      t.float :examination_cost

      t.timestamps null: false
    end
  end
end
