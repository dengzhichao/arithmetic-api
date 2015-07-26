# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

Distractor.destroy_all
Question.destroy_all


csv_text = File.read('./questions_table.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Question.create!(row.to_hash)
end
puts "questions imported"


csv_text = File.read('./distractors_table.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Distractor.create!(row.to_hash)
end
puts "distractors imported"


