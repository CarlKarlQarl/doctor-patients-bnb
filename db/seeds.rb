# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all

100.times do
    Patient.create(name: Faker::Name.name , age: Faker::Number.within(range: 1..100))
end

100.times do
    Doctor.create(name: Faker::Name.name, speciality: Faker::Company.profession)
end

100.times do
    Appointment.create(patient_id: Patient.all.sample.id, doctor_id: Doctor.all.sample.id)
end