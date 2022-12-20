# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

filename = Rails.root.join("lib/assets/Pokemon.csv") # build out the absolute path to file

csv_data = File.read(filename)
pokemon = CSV.parse(csv_data, headers: true, encoding: "utf-8")
pokemon.each do |row|
  Pokemon.create(
  name: row["Name"],
  type1: row["Type1"],
  type2: row["Type2"])
end