# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = []
course_file = File.read("db/course.json")
course_hash = JSON.parse(course_file)

subject = []
subject_file = File.read("db/subject.json")
subject_hash = JSON.parse(subject_file)

instructor = []
instructor_file = File.read("db/instructor.json")
instructor_hash = JSON.parse(instructor_file)

course_hash.each do |row|
  courses << Course.new(name:row['name'], term: row['term'], code:row['code'], independent_study:row['independent_study'])
end

subject_hash.each do |row|
  subject << Subject.new(subject_id:row['id'], name:row['name'])
end

instructor_hash.each do |row|
  instructor << Instructor.new(first_name: row['first'], last_name: row['last'], email: row['email'], instructor_id: row['id'])
end

Course.import courses
Subject.import subject

Instructor.import instructor
