json.array!(@illness_details) do |illness_detail|
  json.extract! illness_detail, :id, :mainSymptom, :dateSymptomAppeared, :calmsPain, :intensifiesPain, :peakHour, :patient_id, :hospitalization_id, :visit_id
  json.url illness_detail_url(illness_detail, format: :json)
end
