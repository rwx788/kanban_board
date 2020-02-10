# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.destroy_all

statuses_list = [
    { status: 'Blocked' },
    { status: 'Open' },
    { status: 'In Progress' },
    { status: 'Review' },
    { status: 'Done' }
]

statuses_list.each do |status|
    Status.create!(status: status)
end

p "Created #{Status.count} statuses"
