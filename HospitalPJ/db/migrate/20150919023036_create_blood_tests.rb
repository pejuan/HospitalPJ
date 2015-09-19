class CreateBloodTests < ActiveRecord::Migration
  def change
    create_table :blood_tests do |t|
      t.date :test_date
      t.float :erythrocytes
      t.float :hemoglobin
      t.float :vcm
      t.float :hcm
      t.float :lymphocytes
      t.float :leukocytes
      t.float :neutrophils
      t.float :eosinofilos
      t.float :platelets
      t.float :vsg
      t.references :patient, index: true, foreign_key: true
      t.float :microbiologist
      t.float :examination_cost

      t.timestamps null: false
    end
  end
end
