class IllnessDetail < ActiveRecord::Base
  belongs_to :patient
  belongs_to :hospitalization
  belongs_to :visit
end
