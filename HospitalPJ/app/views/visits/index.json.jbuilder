json.array!(@visits) do |visit|
  json.extract! visit, :id, :visitDate, :Hospitalized, :doctor_id
  json.url visit_url(visit, format: :json)
end
