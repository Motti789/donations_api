# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Donation.destroy_all
# Donor.destroy_all


donor1 = Donor.create(first_name: "Motti", last_name: "Wilschanski", email: "Mchillywilly@gmail.com", phone_number: "718-885-5694")
donor2 = Donor.create(first_name: "Yitty", last_name: "Rendler", email: "Yitrendler@gmail.com", phone_number: "718-864-5273")
donor3 = Donor.create(first_name: "Shmuli", last_name: "Wilschanski", email: "Samtheman@gmail.com", phone_number: "718-565-2619")


donation1 = Donation.create(amount: 12.50, donor_id: 1)
donation2 = Donation.create(amount: 10, donor_id: 2)
donation3 = Donation.create(amount: 18.75, donor_id: 3)

