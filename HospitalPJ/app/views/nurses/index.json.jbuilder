json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :name, :lastname, :birthdate, :undergraduateUniversity, :payPerHour
  json.url nurse_url(nurse, format: :json)
end
