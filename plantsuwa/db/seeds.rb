# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@c_1 = Climate.create(name: 'Hot')
@c_2 = Climate.create(name: 'Wet')
Climate.create(name: 'Dry')
Climate.create(name: 'Cold')

@p_1 = CurrentPlant.create(name: 'Rose', description: 'A thorny plant. It has many pointy bits and the flowers are usually colourful.', common_name: 'Rose', scientific_name: 'Rosacae', synonym: 'Thorn thing', general_info: 'Don\'t touch it, it hurts!', named_by: 'Mr Rose')
@p_1.climates << @c_1
@p_1.climates << @c_2

CurrentPlant.create(name: 'Pingu', description: 'This isn\'t a plant, it\'s a penguin.')
CurrentPlant.create(name: 'Test Plant', description: 'A test plant.')
