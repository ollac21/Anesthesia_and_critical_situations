# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Pathologie.create(name: "Myasthenia Gravis")
p2 = Pathologie.create(name: "Obesity")

System.create(hemodynamics: "test", pathologie_id: p2.id)
