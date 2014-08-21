# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@c_1 = Climate.create(name: 'Hot')
@c_2 = Climate.create(name: 'Wet')
@c_3 = Climate.create(name: 'Dry')
@c_4 = Climate.create(name: 'Cold')

@p_1 = CurrentPlant.create(name: 'Rose', description: 'A thorny plant. It has many pointy bits and the flowers are usually colourful.', common_name: 'Rose', scientific_name: 'Rosacae', synonym: 'Thorn thing', general_info: 'Don\'t touch it, it hurts!', named_by: 'Mr Rose')
@p_1.climates << @c_1
@p_1.climates << @c_2

CurrentPlant.create(name: 'Pingu', description: 'This isn\'t a plant, it\'s a penguin.')
CurrentPlant.create(name: 'Test Plant', description: 'A test plant.')

@p_2 = CurrentPlant.create(name: 'Completed plant', description: 'A description about the plant', common_name: 'Planty', scientific_name: 'Plantimus Maximus', synonym: 'Plant', general_info: 'Great plant!', named_by: 'Robert Plant', location_name: 'Trinity College, UWA', additional_info: 'This plant is good.', identification: 'Groovy!', physical: 'Tall and skinny.', horticulture: 'Good for herbs or whatever.', architectural_uses: 'Use it for building stuff out of, I don\'t care.', culture: 'People used to eat it sometimes.', conservation: 'Keep in a cold, dry place', wildlife: 'Moooooo', architectural_info: 'I don\'t know, Google it', discovered_by: 'Led Zeppelin')
@p_2.climates << @c_2
@p_2.climates << @c_3
@p_2.climates << @c_4
