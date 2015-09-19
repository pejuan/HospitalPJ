class BloodChemistryTest < ActiveRecord::Base
  belongs_to :patient
  belongs_to :microbiologist
end
