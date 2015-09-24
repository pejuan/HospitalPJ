json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :lastname, :registryDate, :address, :bloodType, :sex, :maritalStatus, :birthdate, :phoneNumber, :cellphone, :email, :emergencyContact, :occupation, :allergies, :user_id
  json.url patient_url(patient, format: :json)
end
