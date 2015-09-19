json.array!(@hospitalizations) do |hospitalization|
  json.extract! hospitalization, :id, :daysSpent, :roomNumber, :entryDate, :doctor_id, :cost
  json.url hospitalization_url(hospitalization, format: :json)
end
