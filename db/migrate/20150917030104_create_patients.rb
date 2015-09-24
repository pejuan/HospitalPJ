class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.date :registryDate
      t.text :address
      t.string :bloodType
      t.string :sex
      t.string :maritalStatus
      t.date :birthdate
      t.string :phoneNumber
      t.string :cellphone
      t.string :email
      t.string :emergencyContact
      t.string :occupation
      t.text :allergies
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
