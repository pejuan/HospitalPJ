json.array!(@bills) do |bill|
  json.extract! bill, :id, :patient_id, :billDate, :hospitalizationCost, :hemogramCost, :doctorsPayment, :biochemistryCost, :visit_id, :hospitalization_id
  json.url bill_url(bill, format: :json)
end
