# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Coordinator.create!(name: "Example Coordinator",
            email: "first.last@rmit.edu.au",
            password: "Passw0rd!",
            password_confirmation: "Passw0rd!")

first_category = Category.create!(name: "Software Engineering")
second_category = Category.create!(name: "Computer Science")

first_location = Location.create!(code: "19.5.23")
second_location = Location.create!(code: "13.2.6")

first_course = Course.new(coordinator_id: 0, 
                          name: 'Rapid Application Development', 
                          prerequisites: "Introduction to Computing", 
                          description: 'Rapid application development provides a range of enabling skills for independent development of complete and industry standard software applications. These skills will equip students to be ready for commercial development and to meet the demand of clients of various sizes, especially startups.')

first_course.locations << first_location
first_course.locations << second_location
first_course.categories << first_category
first_course.categories << second_category

first_course.save(validate: false)
