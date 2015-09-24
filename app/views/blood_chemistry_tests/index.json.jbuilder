json.array!(@blood_chemistry_tests) do |blood_chemistry_test|
  json.extract! blood_chemistry_test, :id, :glucose, :urea, :uric_acid, :creatinine, :cholesterol, :hdl, :ldl, :triglycerides, :got, :gpt, :ggt, :alkaline_phosphatase, :calcium, :iron, :potassium, :sodium, :bilirubin, :test_date, :patient_id, :microbiologist_id, :examination_cost
  json.url blood_chemistry_test_url(blood_chemistry_test, format: :json)
end
