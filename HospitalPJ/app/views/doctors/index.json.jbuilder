json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :lastname, :birthdate, :specialty, :undergraduateUniversity, :specialtyUniversity, :cost, :admin_id
  json.url doctor_url(doctor, format: :json)
end
