# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

winning_word_lengths = WinningWordLength.create(
[{length: 8, year: 1999},
  {length: 7, year: 2000},
  {length: 11, year: 2001},
  {length: 12, year: 2002},
  {length: 11, year: 2003},
  {length: 13, year: 2004},
  {length: 12, year: 2005},
  {length: 8, year: 2006},
  {length: 8, year: 2007},
  {length: 6, year: 2008},
  {length: 8, year: 2009}
  ])
puts "Created Winning Word Lengths."

venomous_spider_deaths = VenomousSpiderDeath.create(
[{death_count: 6, year: 1999},
  {death_count: 5, year: 2000},
  {death_count: 5, year: 2001},
  {death_count: 10, year: 2002},
  {death_count: 8, year: 2003},
  {death_count: 14, year: 2004},
  {death_count: 10, year: 2005},
  {death_count: 4, year: 2006},
  {death_count: 8, year: 2007},
  {death_count: 5, year: 2008},
  {death_count: 6, year: 2009}
  ])
puts "Created Venemous Spider Deaths."
