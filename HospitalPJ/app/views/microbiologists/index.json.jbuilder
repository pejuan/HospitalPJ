json.array!(@microbiologists) do |microbiologist|
  json.extract! microbiologist, :id, :id_number, :name, :lastname, :birthdate, :undergraduateUniversity, :postGraduateUniversity
  json.url microbiologist_url(microbiologist, format: :json)
end
