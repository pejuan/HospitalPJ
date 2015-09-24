json.array!(@blood_tests) do |blood_test|
  json.extract! blood_test, :id, :test_date, :erythrocytes, :hemoglobin, :vcm, :hcm, :lymphocytes, :leukocytes, :neutrophils, :eosinofilos, :platelets, :vsg, :patient_id, :microbiologist, :examination_cost
  json.url blood_test_url(blood_test, format: :json)
end
