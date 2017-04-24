# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Kid.delete_all
Case.delete_all
Goal.delete_all
Survey.delete_all
Question.delete_all

roles = ["guardian", "therapist", "teacher"]

10.times do
  User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: roles[rand(0..2)],
    email: Faker::Internet.email,
    password: "password"
    })
end

therapist_positions = ["Pathologist", "Occupational Therapist"]
teacher_positions = ["Phase 1", "Phase 2", "Phase 3", "Pre-K Teacher"]

therapists = Therapist.where(role: "therapist")
teachers = Teacher.where(role: "teacher")

therapists.map { |therapist| therapist.position = therapist_positions[rand(0..1)]}

therapists.each do |therapist|
  therapist.save
end

teachers.map { |teacher| teacher.position = teacher_positions[rand(0..3)]}

teachers.each do |teacher|
  teacher.save
end

guardians = Guardian.where(role: "guardian")

diagnosis = [true, false]

guardians.each do |guardian|
  kid = guardian.kids.create!(first_name: Faker::Name.first_name, last_name: guardian.last_name, birthdate: Faker::Date.birthday(2, 6), has_diagnosis: true, guardian_id: guardian.id)

  guardian.cases.create!(kid_id: kid.id, therapist_id: therapists[rand(0..(therapists.length - 1))].id, teacher_id: teachers[rand(0..(teachers.length - 1))].id)
end
