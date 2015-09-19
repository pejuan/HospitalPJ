class Bill < ActiveRecord::Base
  belongs_to :patient
  belongs_to :visit
  belongs_to :hospitalization
end
