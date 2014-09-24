puts "Seeding main data..."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
@c_1 = Climate.create(name: 'Hot')
@c_2 = Climate.create(name: 'Wet')
@c_3 = Climate.create(name: 'Arid')
@c_4 = Climate.create(name: 'Semi-Arid')
@c_5 = Climate.create(name: 'Cold')
@c_6 = Climate.create(name: 'Cool')
@c_7 = Climate.create(name: 'Warm')
@c_8 = Climate.create(name: 'Tropical')
@c_9 = Climate.create(name: 'Meditteranean')
@c_10 = Climate.create(name: 'Sub-Tropical')

@p_1 = CurrentPlant.create(name: 'Rose', description: 'A thorny plant. It has many pointy bits and the flowers are usually colourful.', common_name: 'Rose', scientific_name: 'Rosacae', synonym: 'Thorn thing', general_info: 'Don\'t touch it, it hurts!', named_by: 'Mr Rose')
@p_1.climates << @c_1
@p_1.climates << @c_2

CurrentPlant.create(name: 'Pingu', description: 'This isn\'t a plant, it\'s a penguin.')
CurrentPlant.create(name: 'Test Plant', description: 'A test plant.')

@p_2 = CurrentPlant.create(name: 'Completed plant', description: 'A description about the plant', common_name: 'Planty', scientific_name: 'Plantimus Maximus', synonym: 'Plant', general_info: 'Great plant!', named_by: 'Robert Plant', location_name: 'Trinity College, UWA', additional_info: 'This plant is good.', identification: 'Groovy!', physical: 'Tall and skinny.', horticulture: 'Good for herbs or whatever.', architectural_uses: 'Use it for building stuff out of, I don\'t care.', culture: 'People used to eat it sometimes.', conservation: 'Keep in a cold, dry place', wildlife: 'Moooooo', architectural_info: 'I don\'t know, Google it', discovered_by: 'Led Zeppelin')
@p_2.climates << @c_2
@p_2.climates << @c_3
@p_2.climates << @c_4
=end

# Seed data from Bento -> Excel
CurrentPlant.create(name: '\'Honey Gem\'', common_name: '\'Honey Gem\'', family: 'PROTEACEAE', description: 'Large hony gold flowers all year round.
', synonym: '', subspecies: '', location_name: '', general_info: 'Prefers summer-wet conditions. Requires well drained soils but needs watering over summer in Perth. Do not overwater.', additional_info: 'pteridifolia refers to the divided fern-like leaves, Pteris = fern, folia= leaves', identification: 'Fine highly divided leaves 20-30 cm long with about 15 long thin leaflets. Large honey gold flowers, flowers all year long.', physical:'- Attractive, Large, divided, fern-like leaves. Silver under, light green foliage.
- Showing a profuse display of large, 15 cm inflororescencecm wide, gold, Large inflorescence flowers. Flowers all year round.
used for cut flowers or floral art', horticulture: '- Plant in full sun. Use Australian Plant fertilisers. Does not like high levels of phosphorous.
- prune after flowering - Prune back after flowering by one third. Tip prune in summer.
- insect attack - Grevillea Bud Drop Psyllid affects flowering and other mites sometimes cause foliage to shrivel in G. pteridifolia.', architectural_uses: 'fence screener
hedge
ornamental plant', culture: '', conservation: 'Bird attracting. Flowers all year round.', wildlife: 'Attracts:
birds, honey-eaters 
Large flowers are bird attracting. Flowers for most of the year.', architectural_info: 'Large woody shrub. Flowers all yar round. Good display of large honey gold flowers. Attractive, finely divided foliage, green upper and silver lower leaves. Bird attracting.', characteristics: 'large woody shrub, 2m, woody shrub >2m. With a dense canopy and vigorous growth rate.
', environment: '- full sun  
- two drop - water during establishment and may require summer watering.    
- Prefers sand, well drained soils, with a acidic pH.', scientific_name: 'Grevillea pteridifolia hybrid')
CurrentPlant.create(name: '\'Purple Fanfare\'', common_name: '\'Purple Fanfare\'', family: 'GOODENIACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'- Attractive, dark green foliage.', horticulture: '- low maintenance required. Plants usually only last 1-3 years.
- readily available.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: 'Spreading groundcover with profuse purple flowers spring/summer', characteristics: 'Small prostrate groundcover, >1 m, Perennial herbaceous shrub < 1m. With a dense canopy and vigorous growth rate.', environment: '- two drop
- Prefers sand, well drained soils, with a neutral to acidic pH.', scientific_name: 'Scaevola \'Purple Fanfare\' (incomplete)')
CurrentPlant.create(name: 'African daisy', common_name: 'African daisy, Aurora daisy', family: 'ASTERACEAE', description: 'Profuse flowering over an extended period from late winter through late summer. Flowers available white, pink, red, yellow, orange.', synonym: '', subspecies: '', location_name: '', general_info: 'General Information: MInimum temperatures 1-5 C.', additional_info: '', identification: 'Daisy-like flowers in a range of colours. Attractive chrysanthemum-like leaves (lobed edges), grey above and green below.', physical:'Attractive, Chrysanthemum-like, grey above, green below, silver foliage.', horticulture: '- low maintenance required.
- readily available.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Compact ground cover/herbaceous shrub, 40 cm, Perennial herbaceous shrub < 1m. With a dense canopy and vigorous growth rate.', environment: '- Two drop
- Prefers all types soils, with a neutral to acidic pH.
- Wind tolerant', scientific_name: 'Arctotis x hybrida')
CurrentPlant.create(name: 'Angeled lobelia', common_name: 'Angeled lobelia', family: 'CAMPANULACEAE', description: 'attractive small blue flowers produced in spring-summer (long flowering)', synonym: '', subspecies: '', location_name: '', general_info: 'thrives in heavy soil near water, suitable for poorly drained (boggy) areas (prefer non-stagnant bogs, where water moves through the soil). Tolerates temporary inundation.', additional_info: 'Native to Australia and New Zealand.', identification: 'Angular stems, sparse oblanceolate (to 5cm long) foliage. Small blue flowers are borne in spring-summer.', physical:'- Oblanceolate, green foliage.
- Showing small, blue flowers. Flowers during September - February [spring, summer].', horticulture: '- Suckering root system may become invasive in rockeries. Layering plant - in which the roots grow from stems which are in contact with the soil.
- prune after flowering - to encourage further flower production
- cutting - not as common; half-ripened tip cuttings can be taken in summer
- division - division of the roots (spring or autumn)', architectural_uses: '- basket plant
- bedding plant
- coastal plant - secondary
- groundcover
- potted specimen
- reduces erosion - soil binder
- rockery plant
- waterside position', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'suckering, spreading, Perennial herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- partial shade
- three drop
- Prefers loam soils.
- Frost Tolerant', scientific_name: 'Lobelia alata')
CurrentPlant.create(name: 'Aniseed boronia', common_name: 'Aniseed boronia', family: 'RUTACEAE', description: 'dainty slightly pendulous small aromatic shrub
', synonym: '', subspecies: '', location_name: '', general_info: 'Soil requires some moisture (best if an even water status can be maintained), they do not like hot conditions or drying winds. Naturally found growing in a diverse range of environmental habitats from sand to clay in heathlands and forests. Favouring sandy soil with a low organic matter content and good aeration.', additional_info: 'crenulata being Latin for \'leaves with a finely crenate margin\'. Referencing the slighly wavy, saw-like margin of the leaves.
Extending along the coastal regions of Western Australia from Shark Bay to near Esperance, inland to Wyalkatchem and Coorow. Being widespread in the Perth regions on the coastal plain and in the Darling Range.', identification: 'A variable species. Generally a small shrub with slender shoots and slightly pendulous to erect branches, of dainty habit - rarely bushy. When mature has a roughly hemispherical shape. Dull dark green leaves are simple, opposite, obovate, to 1cm long x 3-4mm wide, petiole 1mm long, apex shortly acuminate, margin entire but becoming finely crenulate above the middle, glabrous, finely dotted with glands and slightly aromatic. Colouring is the same on upper and lower surfaces. Upper twigs are squarish, green, stained red above. Flowers are 4 petalled, star-shaped and pink, 1.3cm across, stamens 8 (slightly unequal in length) with white pubescent filaments and green anthers. Inflorescence being a 1-3 flowered cyme in the opposite axils of the upper shoots, forming a racemose spray to 10-15cm long just below the terminals.
Note that a distinct form from Margret River called B. crenulata var. pubescens exists. This has hairy branches and broadly elliptic hairy leaves.', physical:'- Small obovate, aromatic, dark green foliage.
- Showing small, 1.3 - 1.5cm wide, pink, star-like flowers. Flowers during August - December [spring].
used for cut flowers or floral art
- Small fruit. Fruits are 4 loculed capsule.
- Small, smooth seeds.', horticulture: '- generally difficult to maintain
- low maintenance required. Cover the surface of the soil with a heavy leaf mulch, pebbles, large stones or sandstone slabs to keep the roots cool (note that fine organic mulches may be detrimental if placed close to the crown of the root system, favouring collar-rot). Can add peat moss to soil to help retain moisture. Potted specimens should be watered lightly, less when not in full growth. Boronias will grow in lime-free soils. After light pruning, fertilise with blood and bone at 50g/square m at this time to encourage new growth.
- prune after flowering - Light pruning after flowering helps to prolong life and increases the bushy habit of the shrub.
- cutting - The most popular method of propagation is from firm tip cuttings. Cuttings should be taken in mid - spring to late summer, strike into a coarse sand media and keep in a cool humid environment.
- insect attack - generally pest free, may be susceptible to scale attack
- readily available. Note that a distinct form from Margret River called B. crenulata var. pubescens exists.', architectural_uses: 'potted specimen
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'dainty, slightly pendulous, woody shrub < 1m. With a dense canopy.
', environment: 'partial shade
tolerates full shade
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Boronia crenulata')
CurrentPlant.create(name: 'Ashby\'s Banksia', common_name: 'Ashby\'s Banksia, Orange banksia, Sunrise', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Medium to tall shrub with saw toothed green leaves. Terminal bright orange-yellow flower heads up to 20 cm long.', physical:'- Attractive, toothed, green foliage.
- Showing a moderate display of large, 10-20 cmcm wide, orange, Cylindrical head opening from base flowers. Flowers during August - November [spring].
- Large, 10-20 cmcm wide, gray fruit. Fruiting bodies are moderate in their abundance.
- brown seeds.
- Smooth', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Large shrub, 4 m, woody shrub >2m. With a open canopy.', environment: 'full sun  
one drop
Prefers sand, well drained soils.
Wind Tolerant
Salt Tolerant', scientific_name: 'Banksia ashbyi')
CurrentPlant.create(name: 'Australian native violet', common_name: 'Australian native violet, Native violet', family: 'VIOLACEAE', description: 'Useful groundcover in damp, shaded areas. Will not tolerate pedestrian traffic. Dainty purple and white flowers. FLowers for most of the year.', synonym: 'Violoa reniformis, Erpetion reniforme', subspecies: '', location_name: '', general_info: 'Prefers damp areas with shade.', additional_info: 'hederacea - from Hedera - Ivy - leaves are similar', identification: 'Mat-forming ground cover 3-5 cm high, may spread over a wide area. Tiny kidney-shaped leves similar to Hedera canariensis. Purple and white flowers.', physical:'- Showing a moderate display of medium, 1 cmcm wide, white, white and purple flowers. Flowers all year round.', horticulture: '- low maintenance required.
- division - By division in spring
- readily available.', architectural_uses: '- bedding plant
- cottage plant
- groundcover
- groundcovers for small areas between shrubs or driveway strips
- ornamental plant
- plants for paving and wall crevices
- rockery plant
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'Useful groundcover in damp, shaded areas. Will not tolerate pedestrian traffic.', characteristics: 'Low, creeping. mat-forming herb <5 cm, 1m, Perennial herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- artial shade
- tolerates full shade  
- two drop - may require summer watering.
- Prefers loam soils, with a neutral pH.', scientific_name: 'Viola hederacea')
CurrentPlant.create(name: 'Bare twigrush', common_name: 'Bare twigrush', family: 'CYPERACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally found lining watercourses, estuaries and swamps. Living in fresh to brackish or seasonally saline water. Grows in partially inundated areas or areas which are subject to seasonal waterlogging, prefering environments with a constant water level (coping with fluctuations of up to half a metre).', additional_info: 'In Western Australia it is naturally distributed along the coast from Dongara to the Recherche Archipelago.', identification: 'Often forming colonies along watercourses. Foliage mainly comprises of stems which small leaves being reduced to sheaths which enclose the stem (leaf sheath is a flat or folded blade 2-10mm long). Stems are smooth, cylindrical, blue-green 1-3mm wide. Inflorescence is a spike 1-6cm long made up of small brown spikelets 3-5mm long, each spikelet containing one or more small flowers with a bract but no floral segment. Fruits are small, 3-ribbed nuts, one maturing in each spikelet.', physical:'- Cylindrical stems blue, green foliage.
- Showing medium, 1 - 6cm wide, brown, floral spike flowers. Flowers during September - February [spring, summer].
- Small fruit. Fruits are 3-ribbed nut.', horticulture: '- low maintenance required.
- division - readily propagated by rhizome transplantation. 10cm long sections of the rhizome, with good root and shoot mass should be taken (do not trim leaves), planted at 0.5m densities, 10-25cm depth in sandy sediments. Division should occur in winter and spring.
seed - propate using in-vitro culture of seed embryos
- not readily available.', architectural_uses: '- waterside position
- wetland plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rhizomatous, spreading, Perennial sedge < 1m.', environment: '', scientific_name: 'Baumea juncea')
CurrentPlant.create(name: 'Baxter\'s Banksia', common_name: 'Baxter\'s Banksia, Bird\'s Nest Banksia', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Grows on white or grey sandy soils and consolidated sandunes.', additional_info: 'Mr Baxter. Grows along south coast of Western Australia, Albany - Esperance', identification: 'Leaves look like they have been pruned. Cut from the mid-rib into triangular pointed lobes', physical:'- Attractive, Deeply divided, triangular lobes., green foliage.
- Showing gold, Cone is hemispherical, lemon yellow flowers. Flowers during December - February, August, September [summer].
used for cut flowers or floral art
- Large, brown fruit. Fruits are woody cone. Fruiting bodies are moderate in their abundance.', horticulture: '- prune after flowering - Prune lightly to no more than 10 mm diameter branches. Light prune only.
- readily available. Available from Australian plant nurseries.', architectural_uses: 'ornamental plant
', culture: '', conservation: 'Bird pattracting', wildlife: '', architectural_info: 'Spreading shrub 2-3 m', characteristics: 'Spreading, open, 2-3m, woody shrub >2m. With a open canopy.', environment: '- full sun
- Prefers sand soils.
', scientific_name: 'Banksia baxteri (inc)')
CurrentPlant.create(name: 'Bear\'s breeches', common_name: 'Bear\'s breeches, Oyster plant, Bearsfoot, Bear\'s breech', family: 'ACANTHACEAE', description: 'Grown for its attractive large leaves and interesting floral spikes. Beautiful feature plant. Rapid spreading plant with extensive root system which may get out of control.', synonym: '', subspecies: '', location_name: 'Tropical Grove (Great Court)', general_info: 'Prefers humus rich soil. Water well, except when dormant.', additional_info: 'The common names of \'Bear\'s Breeches\', \'Bear\'s Breech\' and \'Bearsfoot\' are used to describe all species of Acanthus. The name \'Oyster bush\' being more species specific and may relate to the colour of the tubular flowers.
Origninating from the meditteranean.', identification: 'Semi-evergreen, as it dies back after flowering. It has large glossy, bright green, oval leaves which are deeply serrated with conspicuous veins. Its floral spike is to 1m tall, made up with densely clustered funnel-shaped oyster grey or white to light rosy purple flowers.', physical:'- Large, deeply serrated, green foliage.
- Showing a profuse display of large, 1mcm wide, white, floral spike, purple-pink flowers. Flowers during January, December.
used for cut flowers or floral art', horticulture: '- the plant dies back post flowering 
- prune after flowering - remove spent flowers, stems and dead leaves (plant dies back post flowering) 
- division - propagate by division in autumn
- seed - propagate by seed sown in spring 
- insect attack
- slugs and snails
- Readily available.', architectural_uses: '- drain clogger
- ornamental plant
- reduces erosion - soil binder', culture: '', conservation: '', wildlife: '', architectural_info: 'Useful to cover steep banks.', characteristics: '- leafy
- upright-growing
- Perennial herbaceous shrub 1 - 2 m.
- With a vigorous growth rate.', environment: '- Partial shade   
- Three drop
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Acanthus mollis')
CurrentPlant.create(name: 'Bégonia', common_name: 'Bégonia', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Begonia')
CurrentPlant.create(name: 'Bird\'s nest fern', common_name: 'Bird\'s nest fern, Australian bird\'s nest fern, Crow\'s nest fern, Crow\'s nest', family: 'ASPLENIACEAE', description: 'attractive rosette of radiating fronds', synonym: 'Asplenium nidus', subspecies: '', location_name: 'Art Gallery', general_info: 'Often found growing in protected moist spots in open forests, on trees in rainforest situations. In drier forest conditions it grows amongst rocks. Will survive periods of temporary inundation.', additional_info: 'Naturally distributed through Queensland (north to McIlwraith Range) and New South Wales (to the south coast), also being found in Asia.', identification: 'Bright green fronds are arranged in a shuttlecock or nest-like manner (rosette). Leaves are broadly lanceolate (20cm wide, up to 1.5 -2m long), glossy, thick, with a prominent dark midrib, tapering to an obtuse or acute apex. Sori numerous, 4mm apart, begin at the midrib (distinguishing feature) extending to 3/4s of the frond width. Roots are dense and spongy and are covered with persistent brown root hairs.', physical:'- Broadly lanceolate, glossy, light green foliage.', horticulture: '- Small root system making it suitable for pots, tubs or baskets. Grow containerised plants in a mixture of coarse peat or chopped sphagnum moss and compost. Will flourish in a fernery.
- Low maintenance required. Tolerating temperatures to a minimum of 2 degrees C (frost tender).
- Minimal - Fading fronds should be removed on a regular basis to encourage new growth.
- Division - rhizomes can be divided though this is not recommended
spore - this is the favoured method of propagation
- Don\'t over water
- Readily available. very popular in cultivation, grown widely around the world. A form with deeply lobed leaves found growing near Kamerunga in Queensland named var. multilobum is now in cultivation.', architectural_uses: '- Basket plant
- Potted specimen', culture: '', conservation: 'radiating fronds catch dead leaves and debris, which rots and creates a good root medium for the plant.', wildlife: '', architectural_info: 'does well under eaves or large gums', characteristics: '- Shuttlecock-like
- Spreading
- fern < 1m
- With a vigorous growth rate.', environment: '- partial shade', scientific_name: 'Asplenium australasicum')
CurrentPlant.create(name: 'Black kangaroo paw', common_name: 'Black kangaroo paw', family: 'HAEMODORACEAE', description: 'grown for its unusual but striking black flowers.', synonym: 'Anigozanthos fuliginosa', subspecies: '', location_name: '', general_info: 'Found growing naturally on lateritic soils (on the Darling Plateau) as well as sandy soils. This species is usually located on slopes and hilltops where soils are never too wet.', additional_info: 'Named as Anigozanthos fuliginosa in 1847 by Sir William Hooker (1785-1865) (Foundation director of the Royal Botanic Gardens at Kew), later being given its own genus, Macropidia in 1855 by James Drummond (1784-1863) and the British algologist William Harvey (who collected in WA during 1854-56). 
The name \'kangaroo paw\' (initally called \'kangaroo foot\') came into common use in the 1950s, and is used to describe many species of Anigozanthos and Macropidia fuliginosa. The prefix \'Black\' describing the flower colour associated with this species. 
Distributed from Muchea (north of Perth) north to Walkaway, in dispersed populations.', identification: 'Leaves are strap-like, grey or blue-green, 20-50cm long (sometimes more). Leaves are hairless and form flattened upright fans at the base of the plant. Flowers are yellowish-green though appear black due to both the stems and flowers being covered with dense black hairs. The floral stem produces a widely branched cluster of inflorescences. Flowers are unusual, clustered on large (to 1m) brached black stems. Flowers are tubular (perianths 5-6cm long, with tubes 1.2-1.8cm long) with petals deeply divided and highly reflexed (curling irregularly back onto the tube). 
Note that in the wild this species often produces 1- 5 floral stems in a flowering season, the common number for most species of kangaroo and catspaws. In cultivation this number is often increased greatly (10 fold), given favourable conditions. Commonly the inflorescence is many flowered, 5 - 15 flowers per inflorescence (producing between 10 to 100 flowers per season, note these are dramatically increased in cultivation). 
While most kangaroo paws have leaves and scapes (floral spikes) which die back post flowering, Macropidia has leaves which persist throughout the year. These plants will persist in the same spot for several years (note many other kangaroo paws being thought of as biennial due to their poor yearly regeneration). Rhizomes growing larger than most species to 5cm wide. 
Distinguished from the genus Anigozanthos by; the flower colour (black), the seed capsule which contains only 3 seeds (differing from Anigozanthos in which the fruit capsule will hold anywhere from 3 to 4 to 140 seeds). These seeds are larger (up to 5mm) than Anigozanthos species, with a prominent ridge on the inner surface. In addition, when the seed is released from the capsule Macropidia seed retains its attachment to part of the ovary wall, so black hairs can be seen. In Anigozanthos most species release their seed without any external attachment.', physical:'- Flax-like, green foliage.
- Showing large, 100cm wide, black, spectacular, greenish yellow - flowers. Flowers during August - December [spring].
used for cut flowers or floral art', horticulture: '- Has been grown successfully in Sydney, Melbourne and Perth
- low maintenance required. is frost tender, so should be grown in temperate regions and may need protection. 
- prune after flowering - cut floral spikes after initial flowering (low but not too low, leaving axillary buds) so that more floral spikes will re-shoot (extending the flowering time).
- seed - difficult to propagate though ..... include division here with difficult to prop note. 
- fungal attack - susceptible to fungal attack, ink disease (Dreschleria irisid) in hot humid weather', architectural_uses: '- ornamental plant
- potted specimen
- rockery plant', culture: '', conservation: 'A fire opportunist, appearing in great numbers after fires. The rhizome (tough, underground stem) common to most kangaroo paws, is buried 2-10cm below the soil surface allowing the plant to survive bushfires (sprouter). Also commonly seen occupying other disturbed areas (ie road verges).

Note that with regards to the inflorescence, only one or two flowers, open and function at any given moment (an evolutionarily advantageous trait to increase likelihood of successful pollination). Flowers opening from the bottom upward, with new flowers opening at night. Fresh flowers are thrust forward opening (usually) towards the scape (floral stem) on which pollinators (usually birds) sit. These flowers last for roughly 6 days then shrivel and rotate sideways, allowing the next flowers to open and face the stem. Pollinators are attracted to the brightly coloured flowers, being rewarded by often large quantities (170ul per flower per day) of sugar rich nectar (containing 5-20% sugar). As the animal (usually a bird) feasts on the nectar, pushing into the tubular perianth, it is dabbed by pollen coating the anthers. These sausage-shaped pollen grains remain viable for only a day, but will hopefully come into contact with the stigma of another flower and seed will be produced.

This species is highly successful in attractive pollinators (highly successful reproduction) being found to have 50-70% of flowers pollinated and setting seed.

This genus protects itself from predation by herbivors through the production of calcium oxalate crystal (sharp-needle like crystals). Clusters of these crystals (called raphides) are toxic to most animals', wildlife: 'Attracts:
- birds, honey-eaters  (the nectar produced during flowering attracts many honey-eating birds; including the New Holland, singing, brown, white-cheeked and tawny-crowned honey-eaters, silvereyes, weebills and red wattlebirds. While most of these species are successful pollinators, the silvereye and weebill (with their short bills) are known to cause flower damage in pursuit of nectar. Parrots such as the red-capped and Port-Lincoln parrot also destroy flowers, ripping them off the scape and crushing them to get at the nectar.)
- insects (flowering attracts an array of insect feeders; thrips, ants, bees, hairy catterpillars, long-horned grasshoppers. The european honey bee (Apis mellifera) theives nectar from the flowers and appears not to play a role in pollination (due to the large physical separation of the nectar site and the anthers and stigma). Often capitalising on damaged flowers caused by the silvereye and weebill (birds). The long-horned grasshoppers (Katydids) not only enjoy the feast of the flowers but also use the inflorescence as a site for mating.)
- mammals (flowering attracts marsupials; the honey-possum and western pygmy possum (small animals) which scamper up the floral spikes to drink the sugar rich nectar. Kangaroos (western grey) are also known to graze on the flowers, and often cause damage to plants by knocking down the scapes.)', architectural_info: '', characteristics: 'upright, clump forming, Perennial herbaceous shrub < 1m.', environment: '- full sun
- Prefers sand, well drained soils.
', scientific_name: 'Macropidia fuliginosa (incomplete)')
CurrentPlant.create(name: 'Black Locust
 \'Frisia\' Golden Robinia - golden leaf form', common_name: 'Black Locust
 \'Frisia\' Golden Robinia - golden leaf form', family: 'FABACEAE', description: 'Tree 15 m. Potentially weedy. Can produce magnificent displays of dense white flowers over the tree.', synonym: '', subspecies: '', location_name: 'North of Ocagon Theatre', general_info: 'Prefers light sandy soils. Grows naturally in woodland thickets in the USA', additional_info: 'robinia - after Jean Robin the herbalist to Henry IV and Louis XIII of France. IN 1600\'s his sone intreoduced the tree to Europe, now naturalised over UK and Europe. pseudoacacia - false acacia- due to pinate leaves', identification: 'Pinate leaves 30 cm long with 13-15 yellowish-green ovate leaflets. Branches twisting. Deeply furrowed bark on bole. White pea-shaped flowers in long (ca 13 cm), dense sprays.', physical:'- Attractive, irritating, Pinate 13-15 cm long, leaflets ovate, light green foliage.
- Showing a profuse display of large, 1.5 cmcm wide, white, Sprays of flowers 8-20 cm long, fragrant flowers. Flowers during September - November [spring].
perfumed
- 5-10 cmcm wide, brown fruit. Fruits are pod with 4-10 seeds.
- brown, legume dark orange brown, irregular markings seeds.
- Deeply furrowed blackish bark on bole.', horticulture: '- After introduction to Europe has become naturalised. Very weedy in some areas. 
- low maintenance required. Forms root suckers and has become weedy. Can be pruned to a hedge.
- seed - Tree produces/spreads by root suckers
- readily available. Cultivars available. \'Frisia\' has golden leaves', architectural_uses: 'hedge
ornamental plant
reduces erosion - soil binder
shade tree
street tree', culture: '', conservation: 'Spreads from root suckers. Has become weedy in some areas. Do not plant near bushland.
', wildlife: '', architectural_info: 'Useful in streetscapes. Erosion control. Shade tree. Large hedge. Tolerates pollution.', characteristics: 'tree with rounded crown, 15m, tree > 12m. With a dense canopy, vigorous growth rate and extensive root system.', environment: '- full sun  
- one drop, requires summer watering
- Prefers all types soils, with a neutral pH.', scientific_name: 'Robinia pseudoacacia')
CurrentPlant.create(name: 'Blue lechenaultia', common_name: 'Blue lechenaultia', family: 'GOODENIACEAE', description: 'Stunning blue flowers.', synonym: '', subspecies: '', location_name: '', general_info: 'Drought tolerant. Frost tolerant to -5C. Likes heavy/clay soil or well drained soil with few phosphates and nitrates.', additional_info: '', identification: 'Small open shrub with brilliant blue flowers', physical:'- Blue-green, small, linear, heath-like, green foliage.
- Showing a profuse display of small, 1.5 cmcm wide, blue, Brilliant blue flowers. Flowers during August - November [spring].', horticulture: '- Profuse flowering. Long flowering period. Susceptible to Phytophthora.
- low maintenance required. Prune after flowering. Will resprout from base. Use Australian plant fertiliser with low phosphates and nitrates. Susceptible to Phytophthora.
- prune after flowering - Shorten overlong stems after flowering. New shoots will emerge from base.
- seed - Seed in spring or semi-ripe cuttings in summer.
- Phytophthora cinnamomi (dieback)
- readily available. Available from Australian plant nurseries', architectural_uses: 'basket plant
cottage plant
drought resistant
groundcovers for small areas between shrubs or driveway strips
ornamental plant
potted specimen
rockery plant
tolerates harsh conditions', culture: '', conservation: '', wildlife: '', architectural_info: 'Grown for it stunning blue flowers in spring.', characteristics: 'Erect, straggly shrub. 30 cm tall, Linear, soft, blue-green, small, woody shrub < 1m. With a open canopy.
', environment: 'full sun
partial shade   
one drop
Prefers all types, well drained soils, with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Lechenaultia biloba')
CurrentPlant.create(name: 'Boab', common_name: 'Boab', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Andersonia gregoria')
CurrentPlant.create(name: 'Brighteyes', common_name: 'Brighteyes, Resin bush, Yellow daisy', family: 'ASTERACEAE', description: '', synonym: '', subspecies: '', location_name: 'Taxonomic garden', general_info: 'preferring partial shade in hot environments. Favouring a moist gravelly soil.', additional_info: '', identification: 'Leaves are deeply cut, grey-green. Floral head is bright yellow, daisy-like (made up of numerous individual flowers).', physical:'- Deeply cut grey-, green foliage.
- Showing a moderate display of medium, yellow, daisy-like flowers. Flowers during June - November [spring, winter].', horticulture: '- avoid transplanting as it dislikes root disturbance
- prune after flowering - Prune spent flowers to encourage further blooms.
- cutting - Propagate easily from soft-wood cuttings in summer.
seed - in late winter (under glass) or early autumn (outdoors in frost free areas),', architectural_uses: '- coastal plant - secondary
- potted specimen
- rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'good border plant', characteristics: 'upright, spreading, Perennial herbaceous shrub < 1m.', environment: '- full sun
- partial shade  
- One drop - may require summer watering.
- Prefers well drained soils. 
- Frost Tolerant', scientific_name: 'Euryops pectinatus')
CurrentPlant.create(name: 'Broad-leaved paperbark', common_name: 'Broad-leaved paperbark', family: 'MYRTACEAE', description: 'Paperbark. Useful alternate to M. quinquinerva - with green or red flowers. Note: The related M. quinquinerva is weedy in wetland areas - Everglades in Florida.', synonym: '', subspecies: '', location_name: 'oondalup- Central Park', general_info: 'Requires water during establishment and access to irrigation of groundwater during summer.', additional_info: 'viridflora- means green flowers, but better known for the red-flowered form', identification: 'Tall paperbark tree 15-20 m, shorter and more shrubby than M. quinquinerva. Broadly eliptic leaves with 5 main longitudinal veins visible on leaves. Large green or red bottlebrush-type flowers.', physical:'- Attractive, 4-8 x 1.5-3 cm broadly-elliptic, 5 veins, green foliage.
- Showing a moderate display of 1 cm eachcm wide, red, Bottlebrush green or red, 5 cm long flowers. Flowers during June - August [winter].
- Paperbark, noted for its attrative trunk.', horticulture: '- The related M. quinquinerva is weedy in wetland areas - Everglades in Florida.
- low maintenance required.
- not readily available.', architectural_uses: '', culture: '', conservation: 'The related M. quinquinerva is weedy in wetland areas - Everglades in Florida. Do not plant where it may invade wetlands.
', wildlife: '', architectural_info: '', characteristics: 'Tall paperbark tree 15-20 m., 5-110 m, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun  
- two drop
- Prefers all types soils, with a neutral to acidic pH.', scientific_name: 'Melaleuca viridiflora (incomplete)')
CurrentPlant.create(name: 'Broad-leaved paperbark', common_name: 'Broad-leaved paperbark', family: 'MYRTACEAE', description: 'quick grower which may become rampant in small gardens, long flowering', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally found inhabiting moist coastal heathland and occassional swampy areas. Mostly thriving well in wet and saline conditions, tolerating temporary inundation and permanently boggy soil.', additional_info: 'Latin quinque meaning \'five\' and nervus meaning \' a sinew\', referring to the mostly 5 parallel veins in the leaves. 
Naturally extending from the Shoalhaven River near Sydney (New South Wales) to Cape York (Queensland) being the most common paperbark tree of Australia\'s east coast. It also is found in Papua New Guinea, Indonesia and New Caledonia.', identification: 'Leaves silky-pubescent when young becoming glabrous, dull dark green on both surfaces. Leaves are flat, stiff and leathery 4-10cm long by 1.5-3cm wide, petiole 5-6mm long twisted and flattened. Leaves are lanceolate-elliptic to narrowly elliptic or oblanceolate with 3 to 7 nearly parallel longitudinal nerves, finely glandular-dotted and mildly aromatic when crushed. Flowers are white, cream (rarely reddish) bottlebrush-like in 2-5cm long spikes. Inflorescence consisting of about 50 sessile flowers, stamens in 5 clawed bundles to 1.5cm long, filaments cream the anthers white at first but aging to brown. Floral spikes being found at the terminals of the outer leafy twigs. Fruits are small 5mm wide flat-topped woody capsules which are densely clustered around the branchlets.', physical:'- Leathery, lanceolate, dark green foliage.
- Showing a profuse display of large, 2 - 5cm wide, white, bottlebrush-like spikes, creamy- flowers. Flowers during February - August [autumn, winter].
perfumed
- Small, 0.5cm wide fruit. Fruits are flat-topped woody capsules.
- Thick white or grey-ish papery bark which peels readily (in its native environments it is commonly black due to burning by fire). Young twigs are angular, pale yellow-brown and pubescent., noted for its attrative trunk.', horticulture: '- low maintenance required. Frost sensitive, requiring protection.
- minimal - coppice plant, ie can be cut at or near ground level and will reshoot producing mulitple stems to enhance its use as a windbreak, for aesthetic purposes or to renew vigour. 
- seed - seed can be collected throughout the year. Good establishment 
- readily available.', architectural_uses: 'coastal plant - secondary
ornamental plant
shade tree
street tree
windbreak', culture: 'The thick, hardy paper bark once used commercially for lining hanging baskets (known to resist decay in the soil).', conservation: '', wildlife: 'Attracts:
birds, insect-eaters', architectural_info: 'A very common coastal tree which is often used for planting schemes in exposed sandy, moist areas. Also good for poorly drained areas. Quick grower which may become rampant in small gardens. Firewood tree.', characteristics: 'shapely, rounded, erect, tree 6 - 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop
- Salt Tolerant', scientific_name: 'Melaleuca quinquenervia')
CurrentPlant.create(name: 'Brush Box', common_name: 'Brush Box, Queensland Box', family: 'MYRTACEAE', description: 'Do not plant this species as street trees, especially under powerlines. Variegated forms are available e.g. \'Perth Gold\' - gold and green variegated foliage with gold at the margins, \'Variegatus\' has cream/white and green variegated leaves with green at the margins.
', synonym: 'Tristania conferta', subspecies: '', location_name: '', general_info: 'In Perth streets without irrigation these trees may wilt and shed leaves by the end of summer.', additional_info: 'From the brush forests of the east coast of Australia, NSW, QLD, NT. confertus = crowded', identification: 'White flowers with prettily fringed stamen bundles. Lance-shaped leathery lustrous leaves. Woody fruit similar to eucalypts.', physical:'- Showing a minimal display of small, 1 cmcm wide, white, feathery stamen bundles flowers.
- Small, 1 cmcm wide, brown fruit. Fruits are cup-shaped woody fruit. Fruiting bodies are minimal in their abundance.
- Small, brown seeds. Seed is inconspicuous in its abundance.', horticulture: '- Young trees are frost susceptible but mature trees are frost hardy. Not easily established inland.
- high maintenance required. Requires annual pruning to control size.
- remove branches - Trees are very vigorous and require extensive, annual prunning if planted under powerlines etc. 
- seed - Propagate by seed in spring or using semi-ripe cuttings in summer. Varieties are grafted onto parent rootstock.
- readily available.', architectural_uses: 'shade tree
', culture: 'Planted extensively thoughout the older suburbs of Perth (Nedlands, Subiaco) as a street tree. Advocated by someone from Queensland who should be shot! These are fast growing trees and Perth\'s city councils spend millions each year prunning these trees from under powerlines. Hence most trees you will see have a doughnut shaped canopy.', conservation: '', wildlife: '', architectural_info: 'Large tree with glossy green leaves.', characteristics: 'Large tree, 15-30 m, tree > 12m. With a vigorous growth rate.
', environment: '- full sun
- one drop
- Prefers well drained soils.', scientific_name: 'Lophostemon confertus')
CurrentPlant.create(name: 'Bugle', common_name: 'Bugle, Blue Bugle, Carpet Bugle, Carpet Bugleweed', family: 'LAMIACEAE', description: 'attractive groundcover plant with interesting foliage', synonym: '', subspecies: '', location_name: 'Tropical Grove', general_info: 'Generally prefer cool moist positions, while those cultivars with variegated foliage do better in full sun positions.

', additional_info: '', identification: 'Leaves are geneally metallic green and crinkled, in rosettes.', physical:'- Attractive, rosette, variegated, green foliage.
- Showing a profuse display of large, 12cm wide, blue, spike flowers. Flowers during September - November [spring].', horticulture: '- Prune after flowering - this will encourage spread of the plant
- Cutting - can be propagated (not common)
- Division - in spring (root division) - most popular method
- seed - germinates easily
- Fungal attack
- Readily available. with the cultivars; \'Atropurpurea\' a small evergreen perennial (15cm high, 1m spread ) with glossy deep bronze-purple leaves and short blue floral spikes in spring. \'Burgundy Lace\' a semi-evergreen mat forming perennial (40cm high, 60cm spread) with burgundy pink and cream variegated foliage and pale blue floral spikes in spring. \'Jungle Beauty\' has large dark green leaves which are oval, toothed or slightly lobed, flowering in spring with 2-lipped blue flowers. \'Multicolor\' (syn. A.r. \'Rainbow\') an evergreen groundcover (10cm high, 45cm spread) its dark green leaves are marked with cream and pinkish purple tinges. Flowers are small and blue appearing in spring.', architectural_uses: '- groundcover
- groundcovers for areas where some height is required
- groundcovers for small areas between shrubs or driveway strips', culture: 'Ajuga is often used as a healing agent for wounds.', conservation: '', wildlife: '', architectural_info: '', characteristics: '- mat-forming
- spreading
- Perennial herbaceous shrub < 1m.', environment: '- Full sun
- Fartial shade 
- Three drop
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Ajuga reptans')
CurrentPlant.create(name: 'Bull banksia', common_name: 'Bull banksia', family: 'PROTEACEAE', description: 'Not often cultivated, taking 10years to flower from seed. This species is used as an indicator plant of Phytophthora, due to its susceptible nature.', synonym: '', subspecies: '', location_name: '', general_info: 'Most abundant in the jarrah forest, and is the only banksia typical of the laterite country of the Darling Plateau. It grows on nearly all soils on the coastal plain, but is less common here, and tends to favour the more heavily timbered areas such as the tuart forests on Cottesloe soils and marri forests of Guildford soils.', additional_info: 'Latin grandis (great), referring to the large leaves. It was collected from a plant cultivated in Europe, probably raised from seed collected by Archibald Menzies in 1791 at King George Sound. 
Given the name of \'Pulgarla\' by the south-west Western Australian Aborigines. 
Bull banksia extends north to Jurien, inland to Katanning and down to the south coast.', identification: 'It can be easily distinguished from other banksias by it large, shining and broad dark green leaves (10-45 x 3-11cm) which are deeply divided into triangular segments (to the pale vein). Leaves are scattered. New vegetative growth is pink-brown, turning bright green before maturation. Inflorescence is conspicuous (standing above the foliage), cylindrical (10-40 x 7-9cm width at flowering) and terminal to branchlet - usually 1 year old. Fruit cones are large, oblong to cylindrical with a narrow dome at the apex where seed capsules do not form. 
It has a stunted form when growing on granite rocks, or down-south (south-west Western Australia) due to environmental conditions and shallow soil depth due to limestone', physical:'- Attractive, deeply divided, dark green foliage.
- Showing a moderate display of large, 10-40cm wide, yellow, attractive, candle-like flowers. Flowers during October - January.. perfumed, used for cut flowers or floral art
- Large, 10-40cm wide, brown fruit. Fruits are broad. Fruiting bodies are moderate in their abundance.
- Large, 1-4cm wide, winged seeds are seen during March - May [autumn]. Seed is inconspicuous in its abundance.
- rough and thick', horticulture: '- It may take 10 years or more to flower from seed. Seeds are wind dispersed, usually in autumn, being caried 5-10m from the parent plant. B. grandis can grow in heavily shaded areas, though growth is extremely slow 1 to 1.5m after 15 to 20 years.
- low maintenance required. Banksias in general need to be well drained and if possible in a dry position in the garden. Mulch around the base to help provide a cool root run however clear an area around the trunk. A limestone underlay 10-15cm wide at a depth of 30cm may be adviseable. Moderately lime tolerant. 
- minimal - due to its often slow growth, pruning will be minimal
- seed - Not commonly propagated. Propagation best from seed (collected year round, notably in february), with the average strike rate from propagule 50%, and establishment best using seedlings. No information is currently available on the time taken from propagation to field ready and establishment success rates. 
- Phytophthora cinnamomi (dieback) - succumbs quickly, turning yellow and dying
- not readily available. Not often cultivated, often reluctant to flower in cultivation. Often reaching large shrub proportions, although the low spreading form of the south coast would be worth trying from cuttings to see if the shape is retained.', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen
shade tree
street tree
windbreak', culture: 'Aborigines used to suck (or soak) the flower-spikes for their nectar (each flower containing more than 1 tablespoon of nectar). The nectar and pollen now important for beekeepers, helping to bridge the gap between the flowering of parrotbush and jarrah.', conservation: 'Can live for 100 to 150 years. Generally fire resistant, except for extremely intense fires. Saplings can resprout from underground rootstock (epicormic shoots). It thrives in jarrah forests, the seedlings germinating readily in the ground litter. B. grandis protects its flowers and seed from insect attack in two ways: its thick flower spike allowing it to repair damage caused by moth larvae burrowing into the woody axis, the seed follicles being small and remaining largely within the fruit / cone body minimising their likelihood of attracting burrowing insects. 
Banksia grandis is related to Banksia solandri, a shrubby species with smaller leaves and smaller brownish-purple flowers that persist in the fruit.', wildlife: 'Attracts:
- birds, honey-eaters - the flower-spikes attract honeyeaters, wattlebirds and the silvereye
- birds, insect-eaters - insect eaters may be attracted by the moth larvae which feed on the seed and flower-spikes
- birds, seed-eaters - seeds are eaten by Carnaby\'s black cockatoo, the red-capped parrot
- insects - attracted to the nectar produced during flowering
- mammals - the flower-spikes attract the honey possum', architectural_info: 'attractive flower spikes', characteristics: 'open, twisted or gnarled trunk, spreading, tree 6 - 12m. With a open canopy.', environment: '- full sun
- partial shade
- one drop
- Prefers sand, well drained soils, with a neutral to acidic pH.
- Frost Tolerant
- Wind Tolerant
- Salt Tolerant', scientific_name: 'Banksia grandis')
CurrentPlant.create(name: 'Bush lily', common_name: 'Bush lily', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Plant with crow above soil 30 cm apart. Water well. Temp range 15- 25C.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Strappy leaves height 45cm', environment: 'Needs shade in Perth. Not frost tolerant.', scientific_name: 'Clivia miniata')
CurrentPlant.create(name: 'Butterbush', common_name: 'Butterbush, Weeping Pittosporum', family: 'PITTOSPORACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'- Attractive, Narrow linear, aromatic, green foliage.
- Showing a moderate display of small, yellow flowers. Flowers during June - September [winter].
perfumed
- Small, orange fruit are displayed during March - August [autumn, winter]. Fruits are ovoid capsule. Fruiting bodies are moderate in their abundance', horticulture: '', architectural_uses: 'ornamental plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Attractive pendulous branchlets, tree 6 - 12m. With a open canopy.', environment: '- full sun  
- one drop
- Prefers sand soils.', scientific_name: 'Pittosporum phylliraeoides (incomplete)')
CurrentPlant.create(name: 'Cabbage Plam', common_name: 'Cabbage Plam', family: 'ARECACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Palm, palm 6 - 12m.', environment: '', scientific_name: 'Livistonia australis (incomplete)')
CurrentPlant.create(name: 'Camphor myrtle', common_name: 'Camphor myrtle, Heath-myrtle', family: 'MYRTACEAE', description: 'Aromatic, low spreading shrub, long flowering, summer flowering. This native blends well with exotics.', synonym: '', subspecies: '', location_name: '', general_info: 'Found growing naturally on rocky slopes and foothills on heavier soils. Likes moist soil, tolerates periods of temporary inundation', additional_info: 'Plants are commonly referred to as \'Heath-myrtle\', a reference to their \'heath-like\' foliage, the prefix \'Camphor\' being a reference to the smell emitted on crushing of the foliage.
Extends from Eneabba to Albany.', identification: 'Small glabrous shrub. Young stems often have prominent oil glands and ribs. Leaves are bright green \'heath-like\', clustered along branchlets in 4 distinct rows at right angles to the stem, being simple and opposite, blade usually oblong - linear 2.5-7 x 0.3-1mm and 3 angled, shortly petiolate. Flowers are white to rose pink or white tinged pink, rotate 5-petalled, 8-11mm wide, petals 3.5-5mm long, stamens 10-12. Flowers are displayed in a leafy raceme, 1-sided with 1-4 flowers per leaf axil (often solitary sometimes in clusters), borne on short stalks close to branches on old wood. Flowering may extend from July - February, being most prominent from October - January. Fruit being small, 5mm wide, 3 celled urn-shaped woody capsules containing 2 seeds.
\'Heath myrtles\' (Baeckea) can be distinguished from the similar looking \'tea trees\' (Leptospermum) by their generally smaller flowers and opposite instead of alternate leaves.', physical:'- Heath-like, aromatic, green foliage.
- Showing small, 0.8 - 1.1cm wide, pink, 5 petalled flowers. Flowers during July - February [spring, summer].
- Small, 0.5cm wide fruit. Fruits are urn-shaped woody capsule.', horticulture: '- low maintenance required.
- minimal - pruning needs only to be light after flowering (the fall of the petals).
- cutting - propagation is from firm tip cuttings (half hardened wood) with should be taken after the initial growth period, prior to flowering. Strike should be planted into a sand/peat media and kept in a warm and humid environment.
- seed - propagation may also be from seed, if it can be successfully collected (often difficult). This form of propagation is not commonly used.
- not readily available. a prostrate form available in cultivation - makes a good ground cover.', architectural_uses: 'basket plant
groundcovers for areas where some height is required
potted specimen
rockery plant', culture: 'The strong camphor-like odour, emitted when leaves are crushed, is used to alleviate headaches (nasal ingestion of vapours). Some people believe the smell is similar to garlic. Early settlers used the leaves to make a \'bush tea\'.', conservation: '', wildlife: 'Attracts:
birds, insect-eaters 
insects', architectural_info: 'this plants dense and twiggy form means it is a popular rockery plant. The small form can be a basket plant. This native blends well with exotics.', characteristics: 'low, spreading or erect, woody shrub < 1m.', environment: 'full sun
partial shade
Prefers loam, well drained soils.
Frost Tolerant', scientific_name: 'Baeckea camphorosmae')
CurrentPlant.create(name: 'Camphor tree', common_name: 'Camphor tree, Camphor laurel', family: 'LAURACEAE', description: 'This attractive round-crowned tall tree is grown mostly for its lustrous green foliage and to provide shade. Note that these large trees often cause problems with their large, invasive roots.', synonym: 'Camphora officinalis', subspecies: '', location_name: 'Tropical grove, Botany Garden', general_info: '', additional_info: 'The specific name of camphora is derived from the Greek kamphora, being the old generic name for this group of trees.', identification: 'Slender domed at first becoming broadheaded with maturity. Trunk is short, branching early, but massive. Crown is rounded. Young foliage is pink / rust-coloured to lettuce green, grey-blue on the underside, maturing to a shiny dark green colour (note some leaves may turn crimson and fall in spring). Leaves are, simple, alternate, oval shaped (ovate-elliptic) 9-15cm long x 4-6cm wide, tapering to a point. Margin entire may be undulate, venation is reticulate, bright green glands in the axils of the lower viens. Leaves are thin but coriaceous. Leaves when crushed emit a strong camphor fragrance. Flowers are yellow-white, inconspicuous, being displayed in a spray in late September to November. Inflorescence is a axillary panicle to 8cm long occuring in the upper leaves. Flowers are stellate 4-5mm wide. Fruit is a berry, produced after flowering, being green in March turning Black by April-May, before falling. Berry is 1-seeded, 1cm long x 0.7cm wide.', physical:'- Attractive, oval, green foliage.
- Showing a inconspicuous display of 8cm wide, white, floral spike flowers. Flowers during September - November [spring].
- 1cm wide, black fruit are displayed during March - May [autumn]. Fruits are berry.
fruit messy', horticulture: '- minimal - Pruning is minimal, with wayward laterals needing to be removed early on to establish a single trunk. The natural form of this tree should be maintained. 
- cutting - Can also be propagated by semi-ripe cuttings in summer.
- seed - seed when ripe should be sown in autumn, germinating readily. Seeds should be placed into a friable media and kept in a warm humid environment.
- readily available.', architectural_uses: 'drain clogger
fence screener
ornamental plant
shade tree', culture: 'Highly valued for its oil and scented timber. Camphor is extracted from the wood of this species, on a commercial scale.', conservation: '', wildlife: '', architectural_info: 'Camphor laurel is planted extensively in parks, golf-courses and large gardens.', characteristics: 'early-branching, massive trunked, broad-headed, tree > 12m. With a dense canopy.', environment: '- full sun
- partial shade  
- may require summer watering.
- Prefers loam, well drained soils', scientific_name: 'Cinnamomum camphora')
CurrentPlant.create(name: 'Canary Island date palm', common_name: 'Canary Island date palm', family: 'ARECACEAE', description: '', synonym: '', subspecies: '', location_name: 'Great Court - outside Geology', general_info: '', additional_info: '', identification: 'Dioecious plant (separate male and female trees).
Fronds are arching to 5m long, divided into narrow leaflets (feather-like), dark green, leaves have sharp spines. Female plant bears small yellow flowers in clusters (clusters are very large). Fruit is 2cm wide, orange, inedible berry.', physical:'- Attractive, arching fronds, dark green foliage.
- Showing small, yellow flowers.
- Showing flowers.
- Small, 2cm wide, orange fruit.
- the trunk is rough where the leaf bases have fallen away (scarring).', horticulture: '- low maintenance required. Moderately frost resistant (coping with temperatures to -5 degrees C).
- seed - Propagate from seed in spring (keep at temperatures > 24 degrees C)
- readily available.', architectural_uses: '- ornamental plant
- street tree', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'stout trunked, upright, densely crowned, palm 6 - 12m.', environment: '- full sun
- Prefers well drained soils.
- Wind Tolerant', scientific_name: 'Phoenix canariensis')
CurrentPlant.create(name: 'Canary Island ivy', common_name: 'Canary Island ivy', family: 'ARALIACEAE', description: 'This popular ivy makes an attractive groundcover under trees, or can cover a south facing wall', synonym: '', subspecies: '', location_name: 'Sunken Garden, Main Walkway, Economics Garden', general_info: 'will tolerate damp conditions', additional_info: 'Native to the Canary Islands, hence its common name of \'Canary Island ivy\'.', identification: 'Leaves are glossy, mid green, oval to triangular and unlobed. Stems are red-purple, old stems are woody. Adventitious rootlets which help the plant self-cling. Umbels of small yellow-green flowers are borne in autumn, followed by rounded black berries.', physical:'- Oval to triangular, glossy, green foliage.
- Showing a inconspicuous display of small, green, umbels flowers. Flowers during March - May [autumn].
- Small, black fruit. Fruits are rounded.', horticulture: '- Best planted on a south-facing wall.
- Most plants take a year or so to establish, growing vigorously later.
- Regular pruning - Pruning should be regular, keeping young attractive juvenile foliage (ensuring no flowers are produced). Clip side or wayward shoots to maintain spread. Prune in spring.
- Cutting - Propagation is best from soft wood cuttings or rooted stems taken from young or immature vegetation late in summer. If mature growth is struck the resulting plant is shrub like - called \'arborescent ivy\'. 
- Readily available. the variegated cultivar, H. canariensis \'Variegata\' - has a smaller spread (Heioght to 3-4m), leaves are grey-green with cream or white margins. This is a very showy form.', architectural_uses: '- Fence screener
- Groundcover
- Groundcover suitable with some trees or shrubs
- Trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'Often grown as a groundcover, to cover walls and fences, tree stumps, pergolas, posts, arches or to edge masonry work. Some being containerised and kept indoor to trail over window sills and the like. Ivy topiary has made a resurgence, with ivy being grown over wire frames to make decorative features.', characteristics: '- Self-clinging
- Spreading
- Perennial climber 1 - 6m with a vigorous growth rate.', environment: '- Partial shade
- Tolerates full shade
- Prefers well drained soils with a neutral to alkaline pH. 
- Frost Tolerant', scientific_name: 'Hedera canariensis')
CurrentPlant.create(name: 'Candle banksia', common_name: 'Candle banksia, Biara, Coast banksia, Slender banksia', family: 'PROTEACEAE', description: 'Slow growing tree or shrub of irregular form with attractive bright yellow flower spikes. Long flowering.', synonym: '', subspecies: '', location_name: 'botany garden', general_info: 'Frost tender', additional_info: 'latin attenuata (narrowed) in reference to the leaves which narrow towards the base. Collected by Robert Brown in 1801 or 1802 at King George Sound (Albany). The naturalist aboard the Investigator, in which Matthew Flinders explored the Australian Coast. 
Note that B.attenuata is commonly known as Candle banksia, a reference to the slender yellow flower-spikes, but is also known as \'Biara\', \'Coast banksia\' and \'Slender banksia\'. Some of these names may be misleading - coastal banksia giving the impression this plant grows only on the coast where in actual fact it has a much larger distribution extending into the wheatbelt. And Slender banksia does not accurately describe the general shape of the tree / shrub which is spreading. Used to be called a \'honeysuckle\' by early settlers due to the abundant floral nectar. \'Biara\' is the name given by the south-west Western Australia Aborigines. 
Its natural range spreading from the Murchison River to Bremer Bay, east to the Fitzgerald River, inland to Wongan Hills and Lake Grace.', identification: 'attenuata meaning narrow leaves, which is a reference to the leaf base which narrows toward the petiole (wedge shaped). Leaves have a highly variable length ranging from 4-27cm long, with a width of 0.5 - 1.5cm, are scattered, broadly linear, truncate with shortly, evenly serrated margins which are slightly recurved. Leaves deep green and shining above, pale beneath. New vegetative growth is pinkish-grey and provides additional colour to the plant in spring and early summer. Inflorescences terminal, conspicuous, erect, slender and intense sulphur yellow in colour. Fruit is long, narrow, cylindrical cones covered with grey furry hairs (ie the flower spikes are persistent turning from brown to grey with time). Follicles are prominent, broadly elliptic, egg-shaped or globular, opening with or without fire. 
B. attenuata is one of the most common species on the coastal plain along with B. menziesii. 
It can be distinguished from Banksia littoralis by its time of flowering, the position of its flower-spikes and occurrence on sandy soil.', physical:'- Serrated, truncate, dark green foliage.
- Showing a profuse display of large, 5-26cm wide, yellow, slender, cylindrical flower-spike flowers. Flowers during October - February [summer].perfumed
- used for cut flowers or floral art
 - Large, 5-26cm wide, brown fruit are displayed all year round. Fruits are slender. Fruiting bodies are profuse in their abundance.
- Large, 2-3cm wide, obovate, winged seeds.
- Thick, verrucose (warty), friable, pale grey-orange, dark-grey. Younger branches downy.', horticulture: '- Takes up to 10 years to flower. Temporary screen of hessian or brushwood and increased watering may be helpful in primary establishment.
- low maintenance required. suggested underlay of limestone chips 10-15cm at depth of 30cm
- remove branches - may be heavily pruned to main branches or lignotuber.
- seed - average strike rate from propagule 71%, with establishment best from seedlings. No information available on time taken from propagation to field ready, or establishment success rates.
- insect attack - moth larvae burrow into the floral axis and the larvae of moths and weevils burrow into the cones and eat the seeds.
- not readily available. has been grown in Perth and South Australia', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen
tolerates harsh conditions', culture: 'Aborigines extracted the nectar from the flower-spikes by sucking. They also would make a sweet drink by lining a hole in the ground with paperbark, putting the flower-spike into it and covering it with water. The branches and bark are used as a \'touchwood\' to preserve fire embers. Old flower spikes being used as tinder for fire-making. 
Candle Banksia is very important to apiarists (bee keepers), to keep their bees in good source of nectar, though the honey is not of high quality.', conservation: 'Candle banksia has either a lignotuber or fire-tolerant trunk, mature trees rarely dying post fire. Trees resprouting vigorously from the ends of branches, saplings re-sprouting from rootstocks. 
B. lindleyana a related species is a shrubby plant with flat, shortly denate leaves much larger flowers and smaller follicles, old styles stiff and spreading.', wildlife: 'Attracts:
- birds, honey-eaters - honeyeaters drink the nectar of the flower-spikes
- birds, insect-eaters - Robins, willie wagtails, black-faced cuckoo-shrikes and honeyeaters feast on the insects attracted to the flower-spikes. Carnaby\'s black cockatoo eats weevil larvae in the cones. Bee-eaters catch feral honeybees.
- birds, seed-eaters - Carnaby\'s black cockatoo eats seeds from the cones
insects', architectural_info: 'Attractive flower-spikes and fruits. B. attenuata can be grown as a bonsai specimen.', characteristics: 'open, spreading, tree 6 - 12m. With a open canopy.', environment: '- full sun  
- one drop
- Prefers sand, well drained soils, with a neutral to acidic pH.', scientific_name: 'Banksia attenuata')
CurrentPlant.create(name: 'Cape Chesnut', common_name: 'Cape Chesnut', family: 'RUTACEAE', description: 'Stunning floral display in October', synonym: '', subspecies: '', location_name: '', general_info: 'Requires well drained, light, fertile and moisture retentive soil.', additional_info: 'Calodendron means beautiful tree in greek. capense referes to its origin in the Cape, South Africa.', identification: 'Stunning display of terminal clusters of large pink-mauve flowers in late spring. Specimen east of Moreton Bay Fig Mount Joy St, 2 doors North of Princess Rd.', physical:'- Attractive, Oval with translucent, 7 cm, dark green foliage.
- Showing a profuse display of large, 5-7 cmcm wide, pink, Termina clusters of pink-mauve flowers flowers. Flowers during October.
perfumed
- Medium, 1-2 cmcm wide, brown fruit are displayed during December. Fruits are Three seeds arranged in axillary clusters. Fruiting bodies are minimal in their abundance.
- Small, 0.5-1 cmcm wide, black seeds.', horticulture: '- Propagate by seed in spring or semi-ripe cuttings in summer
- seed - Can propagate from seed in spring or semi-ripe cuttings in summer.', architectural_uses: 'ornamental plant
shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Stunning specimen tree - short flowering display. Provides dense shade.', characteristics: 'Deciduous or Evergreen tree to 12 m, tree 6 - 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- Prefers loam, well drained soils.
', scientific_name: 'Calodendron capense')
CurrentPlant.create(name: 'Cardboard cycad', common_name: 'Cardboard cycad', family: '', description: 'Cardboard Cycad. 1,2 square. Fronds pinnate up to 1.2 m long', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Cycad', environment: '', scientific_name: 'Zamia furfuracea')
CurrentPlant.create(name: 'Cast-iron plant', common_name: 'Cast-iron plant', family: 'LILIACEAE', description: 'attractive arching foliage, tough - able to withstand neglect, popular indoor plant', synonym: '', subspecies: '', location_name: 'Tropical Grove', general_info: 'withstands poor environmental conditions', additional_info: 'The common name of \'Cast-iron plant\' describes the plants ability to withstand neglect.', identification: 'Leaves are tough, glossy dark green. Narrow, pointed, oval-elliptic foliage stands erect - arching on 15cm long stems. Foliage reaches up to 60cm high. Cream to dark purple bell-shaped flowers are produced on short stalks close to the ground and are generally inconspicuous (hidden by the foliage). Flowers are often not seen, especially if the specimen is an indoor plant.', physical:'- Attractive, glossy, narrow, oval-pointed, dark green foliage.
- Showing a inconspicuous display of small, white flowers', horticulture: '- able to withstand neglect
- low maintenance required. frost tender, withstanding temperatures to a minimum of 5-10 degrees C. Water frequently when in full growth, less at other times. Direct sunlight burns the leaves
- division - propagate by division of rhizomes in spring
- readily available. variegated forms \'Variegata\' are also available', architectural_uses: '- indoor plant
- potted specimen', culture: 'One of the most famous house plants of the Victorian era', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rhizomatous, slowly spreading, clumping, Perennial herbaceous shrub < 1m.', environment: '- partial shade
- tolerates full shade
- Prefers well drained soils.', scientific_name: 'Aspidistra elatior')
CurrentPlant.create(name: 'Check identification - may be a hybrid', common_name: 'Check identification - may be a hybrid', family: 'ROSACEAE', description: 'Very tough plant. Evergreen shrub with a stunning display of perfumed, white flowers with red centres in spring/summer and blue-black berries in autumn. Has a display when not much else is in flower/fruit.', synonym: '', subspecies: '', location_name: '', general_info: 'Very tough plant. Will cope with some salt winds and dry easterly winds. Frost hardy. Requires fertile, well drained soil. WIll grow on all soil types from slightly acidic to slightly alkaline.', additional_info: '', identification: '', physical:'- Attractive, ovate with serrations near point, thick, leathery, dark green foliage.
- Showing a profuse display of medium, 1.5 cmcm wide, white, White petals, red stamens, pistils flowers. Flowers during September - February [spring, summer].
perfumed
- Medium, 1 cmcm wide, black fruit are displayed during March - May [autumn]. Fruits are blue-black berries. Fruiting bodies are moderate in their abundance.', horticulture: '- Very tough plant.
- low maintenance required. Can be pushed into faster growth with water, fertiliser. Some light pruning after flowering may be helpful.
- prune after flowering - Some pruning may be helpful after flowering but plants tend to keep their rounded shape reasonably well.
- cutting - Propagate using semi-ripe cuttings, late summer.
- readily available. Available from many nurseries', architectural_uses: 'fence screener
hedge
ornamental plant', culture: '', conservation: 'Very tough plant', wildlife: '', architectural_info: 'Evergreen shrub with a stunning display of white flowers with red centres in spring/summer and blue-black berries in summer/autumn.', characteristics: 'Evergreen bushy shrub, 2.5 m, woody shrub >2m. With a dense canopy.
', environment: 'full sun
two drop - may require summer watering.
Prefers all types, well drained soils, with a neutral to acidic pH.
Frost Tolerant
Wind Tolerant', scientific_name: 'Raphiolepis indica')
CurrentPlant.create(name: 'Chenille honeymyrtle', common_name: 'Chenille honeymyrtle', family: 'Myrtaceae', description: 'Large woody shrub. 0.5-1m high. Compact forms available. Short lived but stunning display of cream-pink tinged bottle brush-like flowers.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Prune to shape after 1 year then after flowering', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: 'Dwarf forms available', characteristics: '', environment: 'Lime tolerant. Full sun', scientific_name: 'Melaleuca huegelii')
CurrentPlant.create(name: 'Chinese tallow
', common_name: 'Chinese tallow
', family: 'EUPHORBIACEAE', description: 'Small elegant tree with strong autumn colours in Perth. Leaves turn red. Seeds, which have a whit coating can be used to make candles, soap etc.', synonym: '', subspecies: '', location_name: 'North of UWA Extension corner Gordon and Clifton St.', general_info: 'Requires well drained soil.', additional_info: 'Sapium: saponify = to make soapy sepium: sebum = waxy', identification: 'Medium tree with soft heart shaped leaves10 cm acrooss, tapered at stalk end. Turn red in Autumn in Perth. It has small yellow flowers clustered along thin catkins.', physical:'- Attractive, heart shaped, green foliage.
- Showing a minimal display of small, yellow flowers. Flowers during September - November [spring].
- Small, white, white coating seeds are seen during September - November [spring]. Seed is minimal in its abundance.', horticulture: '- low maintenance required.
- minimal - Pruning tolerated if necessary 
- seed - Seed in spring or take semi-ripe cuttings in summer
- readily available.', architectural_uses: 'shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Small elegant tree with strong autumn colours in Perth. Leaves turn red.', characteristics: 'Small tree, 6 m, tree < 6m. With a dense canopy.', environment: '- full sun  
- one drop - may require summer watering.
- Prefers loam, well drained soils.', scientific_name: 'Sapium sebiferum (incomplete)')
CurrentPlant.create(name: 'Claret Ash', common_name: 'Claret Ash', family: 'OLEACEAE', description: 'Large elegant tree. Dense dark green foliage in spring and summer. Deep reddish-purple coloured leaves in autumn. Has good autumn colour in Perth.
', synonym: '', subspecies: '', location_name: '', general_info: 'Would require watering to establish and access to irrigation or groundwater over summer', additional_info: 'Fraxinus - old Latin name for Ash', identification: 'Large spreading tree, elegant habit. 20 m tall x 15 m wide. Pinate leaves (30cm) with 5-7 narrowly oval dark green leaflets turn bright reddish-purple in autumn.', physical:'Pinate leaves (30cm), leaflets 5-7 narrowly oval, dark green foliage.', horticulture: '- Would require watering to establish and access to irrigation or groundwater over summer.
- low maintenance required. Note deciduous
- readily available.', architectural_uses: 'ornamental plant
shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Large elegant tree. Dense dark green foliage in spring and summer. Deep reddish-purple coloured leaves in autumn. Has good autumn colour in Perth.', characteristics: 'Large elegant tree to 20 m, 15 m, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun  
- two drop
- Prefers loam soils, with a neutral pH.
- Frost Tolerant', scientific_name: 'Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
CurrentPlant.create(name: 'Coastal daisy
', common_name: 'Coastal daisy
', family: 'ASTERACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'woody shrub 1 - 2 m.
', environment: '', scientific_name: 'Olearia axillaris')
CurrentPlant.create(name: 'Coastal moort', common_name: 'Coastal moort, Moort', family: 'MYRTACEAE', description: 'A good bushy small tree for coastal planting.', synonym: 'platypus var heterophylla', subspecies: '', location_name: '', general_info: 'Occurs mainly in a heavy, grey, clay soil. The soil is not readily permeable and requires a considerable amount of rainfall to become wet. When grown in sandy soils its habit is lax as opposed to the more robust plant found in the heavy clay soils of its natural habitat. It is also found associated with limestone.', additional_info: 'playtpus means literally \'broad-footed\' and is probably a reference to the broad rounded leaves or the foot-like shape of the peduncle and buds. Greek hetero meaning \'different\' and phyllus meaning \'leaf\', referring to the longer than broad leaves being different from the very rounded leaves of E.platypus var. playtpus. 
The common name of \'Moort\', being an Aboriginal name, and is exclusively used for this species. 
Originating from the coastal districts of the Esperance Plains, notably Hopetoun, Western Australia.', identification: 'Readily identified by its often bushy form and distinct buds and fruit. Juvenile leaves are petiolate, alternating, ovate to 5x4cm green, scabrid. Mature leaves are shiny grey to olive-green, alternate, longer than broader as in E. playtpus var. platypus 4.5-9.5 x 1-3cm, concolorous. Reticulation very sparse, obscured by very numerous round island oil glands. Inflorescences axillary, unbranched, 7-flowered; peduncles broad, flattened 1-2.8cm long. Buds are shortly pedicellate, broadly fusiform, ribbed at the base 1.2-2.8 x 0.4-0.6cm; operculum horn-shaped. Fruit sessile to subsessile, barrel-shaped to cylindrical, operculum scar prominent 0.7-1.1cm x 0.6-0.9cm, rim moderately thick. Seed grey-black, compressed-ovoid with distinct reticulum. 
Is to be separated into a distinct species separate from E.platypus.', physical:'- Shiny, grey-, green foliage
- Showing white flowers. Flowers during November - February [summer]
- 0.7-1.1cm wide fruit. Fruits are barrel shaped to cylindrical
- Small, black, compressed-ovoid seeds.
- Smooth, dark grey or light grey over coppery, pinkish grey or yellow-green trunk (sheding in strips in summer).', horticulture: '- Low maintenance required. appears to have moderate resistance to frost.
- Seed: seed collected notably in January, establish from seedlings
- Readily available. 
- Cultivated extensively throughout Perth and the district (more than E. platypusvar. playtpus). It is also cultivated in the eastern States and in California.', architectural_uses: '- Coastal plant (primary & secondary)
- Drought resistant
- Ornamental plant
- Shade tree
- Street tree
- Windbreak', culture: 'The timber is strong and straight-grained. 
Moort flowers have good pollen production yeilding a good honey flow.', conservation: '', wildlife: 'Attracts
- Birds 
- Insect eaters 
- Seed eaters', architectural_info: '', characteristics: '- Stout trunked, spreading, tree < 6m
- Dense canopy
- Vigorous growth rate', environment: '- One drop
- Prefers all types soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Eucalyptus utilis')
CurrentPlant.create(name: 'Coastal Rosemary', common_name: 'Coastal Rosemary', family: 'LAMIACEAE', description: 'Coastal - tolerates harsh winds and salt spray. Rounded dense shrub. Fast growing.
', synonym: 'Westringia rosmariniformis', subspecies: '', location_name: '', general_info: 'Front-line coastal plant, tolerates harsh conditions. Resistant to wind and salt spray.', additional_info: '', identification: 'Shall dense, rounded shrub. Small white to pale mauve flowers with 5 petals. Rosmary-like leaves green-grey uppers surface and and white-felted underneath. Leaves crowded in whorls of 4.', physical:'Attractive, small compact whorls of 4, long and thin, green foliage.
', horticulture: '- Makes a good coastal hedge. Preferably 0.5 - 1.5 m high. Fast growing.
- low maintenance required. Responds well to pruning.
- prune after flowering - Responds well to pruning but keeps form reasonably well. Makes a good hedge. Preferably 0.5 - 1.5 m high.
- readily available. variegated form available \'Morning Light\'', architectural_uses: 'coastal plant - primary
coastal plant - secondary
drought resistant
fence screener
hedge
ornamental plant
rockery plant
tolerates harsh conditions
windbreak', culture: '', conservation: 'Useful coastal garden plant. Tolerates harsh winds and salt spray.
', wildlife: '', architectural_info: 'Useful coastal garden plant. Medium sized rounded shrub with grey-green leaves. Smaller more compact variegated forms available - \'Morning Light\' - has yellow/green foliage.', characteristics: 'Dense grey-green shrub 1.5, < 1.5 m, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.
', environment: 'full sun
partial shade   
one drop
Prefers all types soils, with a neutral to alkaline pH
Frost Tolerant
Wind Tolerant
Salt Tolerant', scientific_name: 'Westringia fruiticosa')
CurrentPlant.create(name: 'Coastal sword-sedge', common_name: 'Coastal sword-sedge', family: 'CYPERACEAE', description: 'Large clumps of strap-like leaves', synonym: '', subspecies: '', location_name: '', general_info: 'Tolerates extreme coastal conditions. Found on coastal dunes.', additional_info: '', identification: 'Stems compressed, often convex on one or both surfaces in the central portion, edges stem and leaf margins without wart-like protuberances and compressed. Stems 13-22 mm broad. Dark brown nut 3mm long. 1 or 2 nuts per spikelet. Inflorescence branched 40-180 mm long with many spikelets.', physical:'- Flat leaves 1.5 long 25 mm wide, dark green foliage.', horticulture: '- low maintenance required.
- not readily available. Australian plant nurseries.', architectural_uses: '', culture: '', conservation: 'Tolerates coastal conditions.', wildlife: '', architectural_info: 'Large clumping sedge. Tolerates coastal conditions.', characteristics: 'Broad clumping sedge, 1.5 m, >1m, Perennial sedge > 1m. With a dense canopy and vigorous growth rate.', environment: '- one drop
- Prefers sand, well drained soils, with a neutral to alkaline pH. 
- Wind Tolerant 
- Salt Tolerant', scientific_name: 'Lepidosperma gladiatum')
CurrentPlant.create(name: 'Cockies Tongue', common_name: 'Cockies Tongue, Coral bush', family: 'FABACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'woody shrub 1 - 2 m.', environment: '', scientific_name: 'Templetonia retusa')
CurrentPlant.create(name: 'Common Ash
', common_name: 'Common Ash
', family: 'OLEACEAE', description: 'Large spreading tree.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Fraxinus is the old Latin name for ash trees excelsior - one of Europe\'s largest deciduous trees', identification: 'Large spreading tree 20-30 x 20m. Pinate leaves 30 cm long 9-13 oval leaflets. Characteristic black winter buds. Winged fruit persist after leaf fall.', physical:'- Attractive, Large 30 cm pinnate leaves 9-13 leaflets, dark green foliage.
- Showing a inconspicuous display of small, 1 cmcm wide, pink, Purple flowers open before leaves flowers. Flowers during September - November [spring].
- Medium, 3 cmcm wide, green fruit are displayed during December - May [summer, autumn]. Fruits are samara. Fruiting bodies are minimal in their abundance.
- Young trees- pale grey smooth bark. Older trees with dseeply fissured bark.', horticulture: '- Will require watering to establish and will need acess to groundwater in summer. 
- low maintenance required.
- readily available.', architectural_uses: 'shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Very large spreading tree.', characteristics: 'Large spreading tree 20-30m, 20m, tree > 12m. With a dense canopy and vigorous growth rate.
', environment: '- full sun  
- two drop
- Prefers all types soils, with a neutral pH.
- Frost Tolerant', scientific_name: 'Fraxinus excelsior (Incomplete)')
CurrentPlant.create(name: 'Common coral tree', common_name: 'Common coral tree, Coral bean, Coral tree, Indian coral tree', family: 'FABACEAE', description: 'deciduous tree with attractive red flowers produced in winter and early spring', synonym: 'Erythrina x sykesii', subspecies: '', location_name: 'Biological Sciences Carpark', general_info: 'prefers fertile light textured soil', additional_info: '', identification: 'Sharp spikes (thorns) on trunk and branches (9-10mm long, brownish with a black tip). Upper branchlets have smooth grey-green bark with pale-brown lenticels and oval to orbicular leaf scars 7-8mm wide. Leaves are compound, alternate, trifoliate, shiny green above paler and dull beneath, broad heart-shaped. Venation is reticulate, midrib is yellowish green, 6-8 pairs of lateral veins are prominent from the underside of the leaf. Flowers are pea-shaped, bright red, borne in winter to early spring. Inflorescence consisting of a dense terminal raceme of up to 100 flowers (generally in threes) on 7-8mm long pedicels. Fruit not seen - likely to be sterile. A confusing plant which has many synomns, being previously catalogued under E. hybrida, E. sykesii, E. variegata var. orientalis and E. corallodendron. All these names now apply to different plants.', physical:'- Broad, heart-shaped, green foliage.
- Showing a profuse display of large, red, pea-like flowers. Flowers during June - September [winter].', horticulture: '- Watering needs only to be moderate, and less for potted specimens (especially in winter or when leafless). During youth this tree may require summer watering. However once established this tree is tolerant of moist or dry soils.
- Rooting from felled timber into the soil surface may occur.
- minimal - Pruning is generally minimal once the tree is established. Initial directional pruning may be necessary to curb wayward laterals and to ensure a single trunk. 
- cutting - Hardwood cuttings from woody species should be taken in winter and struck into individual containers or protected open-ground beds.
- seed - Propagation is easy and generally from seed. Seed should be soaked in warm water for 24 hours, to soften the seed coat, sown in spring.
- insect attack - Susceptible to attack from red spider mite.', architectural_uses: 'branch dropper
coastal plant - secondary
ornamental plant
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'in summer, foliage produces a dappled shade.', characteristics: 'irregular, spreading, tree > 12m.', environment: '- full sun  
- one drop - may require summer watering.
- Prefers well drained soils.', scientific_name: 'Erythrina indica')
CurrentPlant.create(name: 'Common correa', common_name: 'Common correa, Native fuchsia', family: 'RUTACEAE', description: 'attractive red bell-shaped flowers are produced over a long period from autumn to spring. Blends well with exotics.', synonym: 'C. speciosa', subspecies: '', location_name: '', general_info: 'occurs in a variety of habitats (coastal, to moist cool valleys), likes fertile, moist soil (will grow in a wide range of soils', additional_info: 'The specific name of reflexa being Latin for \'bent back\' and refers to the corolla lobes.', identification: 'Form is highly variable from prostrate to tall shrub (up to 3m high). Leaves range from oval to linear (1.5-5cm long x 1.5cm wide) and may be smooth to rough (glandular), dark green and shiny above, slightly hairy and paler green beneath. Petiole 3-4mm long. Note the upper twigs are hairy reddish-green. Pendulous, bell-shaped flowers range in colour from yellow, green to pink or red. Calyx 8-9mm across, brown green roughly pubescent, corolla tubulate to 3.5cm long x 1.3cm wide narrowing near the 4-lobed recurved mouth. Stamens 8, filaments creamy-green, anthers yellow being exserted beyond the tube. Flowers generally solitary and terminal; pedicels are short, pubescent and red. Borne from spring to autumn.', physical:'- Variable, dark green foliage.
- Showing medium, red, pendulous, bell-shaped flowers. Flowers during March - November [spring, autumn, winter].
used for cut flowers or floral art fruit. Fruits are 4 loculed capsule.', horticulture: '- Note that soil should be slightly alkaline during planting and early establishment. Potted specimens need moderate watering during flowering, less at other times.
- low maintenance required. Requires minimal care or attention. Older specimens tolerate drier soils than young specimens. Moderately lime tolerant.
- prune after flowering - In young specimens tip-prune for the first few years to encourage a bushy form. Pruning thereafter should be post flowering, with flower shoots reduced to roughly 1/4 of their length. Note pruning increase the number of flowers produced
- cutting - easiest from half-ripened tip or older leafy cuttings taken in summer (hormone cutting powders often being used). Strike cuttings into a sand/peat mixture and keep in a cool humid environment.
- seed - Can also be propagated from seed in spring (this is often slow and unpredictable).
- insect attack - susceptible to attack by scale, control with white oil
- readily available. Numerous forms and hybrids are in cultivation. Low, spreading coastal forms are popular.
- \'Fat Fred\' is a small upright shrub with small lance-shaped leaves and large predominantly crimson-red flowers (3cmx 1.3cm) (red at the base with greenish yellow tips) borne from late autumn to early spring. \'Fat Fred\' is a selected form of C. reflexa.
- \'Dusky Bells\' is a dwarf shrub, often with a groundcovering habit, with pink tubular flowers (4cm x 1cm) in late autumn to early spring. Thought to be a hybrid between C. reflexa and C. pulchella.
- \'Marion\'s Marvel\' is a small shrub to 2m tall with a similar spread. Small dark green leaves which are hairy on the underside. Producing pink based - green tipped tubular flowers from late summer to the end of winter. Thought to be a hybrid between C. reflexa and C. backhousiana.', architectural_uses: 'coastal plant - secondary
potted specimen
rockery plant', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: 'prostrate forms -\'Dusky Bells\', may be used as a groundcover and is smog tolerant. Especially useful in woodland gardens. Blends well with exotics.', characteristics: 'slender stemmed, variable, woody shrub 1 - 2 m.', environment: 'partial shade
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Correa reflexa')
CurrentPlant.create(name: 'Common dampiera', common_name: 'Common dampiera', family: 'GOODENIACEAE', description: 'attractive blue-purple flowering rockery plant', synonym: 'D. cuneata', subspecies: '', location_name: '', general_info: 'will tolerate periods of dryness,', additional_info: 'The name \'Common dampiera\' is Western Australian.
Extending from Geraldton to the South Coast, throughout the wheatbelt, to Israelite Bay.', identification: 'Perennial herb with prostrate or erect rigid stems. Mostly glabrous except for the inflorescence and young leaves (covered with grey hairs). Leaves are variable in shape ranging from narrow to cuneate, 4cm long, sessile. Flowers are bright blue to purple (1.2-1.6cm wide) arranged in loose heads, borne from late winter to early spring, or from spring through to summer. Fruit is cylindric 3-5mm long and hairy.
Widespread on the Coastal Plain and Darling Scarp. In the Perth region specimens from the Darling Range often have leaves which are obtrullate or obovate and distinctly toothed, 8-15mm wide. Coastal Plain specimens are generally narrower and elliptic to narrow obovate, with an entire or only slightly toothed margin, 2-7mm wide.', physical:'- Narrow to oddly triangular, green foliage.
- Showing small, 1.2 - 1.6cm wide, blue flowers. Flowers during July - November [spring].
 - Small, 0.3 - 0.5cm wide fruit. Fruits are cylindric, hairy.', horticulture: '- low maintenance required. moderately frost resistant to frost hardy. Requires minimal care and attention.
- cutting - half-ripened tip cuttings taken in spring or autumn
division - in spring or autumn
- readily available. a compact form, EM>D. linearis \'Violet Princess\', is available.', architectural_uses: '- coastal plant - secondary
- groundcover
- potted specimen
- reduces erosion - soil binder
- rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'good edging plant', characteristics: 'prostrate or erect, suckering, Perennial herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- One drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Dampiera linearis')
CurrentPlant.create(name: 'Common she-oak', common_name: 'Common she-oak, Condil', family: 'CASUARINACEAE', description: 'beautiful form', synonym: '', subspecies: '', location_name: '', general_info: 'It is often found growing in association with Banksia species on Bassendean soil. However it also grows on a wide range of other well drained soil types on the Coastal Plain.', additional_info: 'Its specific name of fraseriana commemorates the botanist Charles Fraser.
The common name of \'She-oak\' was coined by early English settlers to whom the wood resembled that of their native oaks, the \'she\' prefix has caused some confusion and may either be a reference to a) the inferior oak-like wood or b) relate to the graceful nature of the tree. Common being used as this species is the most common she-oak found in the lower south-west region of Western Australia.

Collected at Perth and Wuljenup by J.A.L. Preiss in 1840.

Extending from Jurien Bay to Mt Manypeaks, Western Australia, inhabiting near coastal areas.', identification: 'This is the most widespread she-oak of the lower south-west of Western Australia. With good specimens seen in Kings Park.
Its growth habit changes with its location, ranging from an understorey tree up to 15m tall in the Jarrah forests of the Darling Range to a small tree on the Swan Coastal Plain. Specimens found growing near the coast show an open habit with foliage arranged into more horizontal layers, dead twigs (killed by salt) are curved and straight, creating an unusual but decorative effect.

Common she-oak has thick branches with dense clumps of foliage. Nodes on branchlets (needle-like foliage) numerous, 0.5-1.5cm apart, with 6-8 scale leaves at each node, teeth usually widely spreading and curved downwards. Dioecious plant. The male spikes (staminate flowers) are rich brown in colour, distinctly pedunculate, cylindric up to 12cm long, bracts in whorls of 6-8, mass over the tree in late winter or early spring (May-Oct). Flowering changes the trees overall colour from green to brown and causes foliage to droop. Female spike (pistillate flower) ovoid. Cones are globular to egg-shaped 1.5-3.5 x 1.5-3.5cm reddish-brown aging to grey, peduncle 0.5-1cm long, valves shortly prominent. Seed are 8-11mm long with a dark brown body with white flecks and a transparent colourless wing.

Allocasuarina is readily identified from Casuarina by its scale leaves (whorls of 4-10). Casuarina having scale leaves in whorls of 12-15.', physical:'- Attractive, needle-like, green foliage.
- Small, 0.8 - 1.1cm wide, brown, transparent winged seeds.
- Thick fibrous bark.', horticulture: '- These plants fix their own nitrogen and can therefore be grown successfully in nutrient deficient soils. 
- low maintenance required. Moderately lime tolerant. Usually frost resistant. 
- minimal - Pruning is seldom required, with the natural habit generally being a desirable feature of the plant. Old plants may be improved with light pruning of older branches, followed by watering and feeding to encourage renewed vigour.
- seed - germinates readily and should be sown in spring (requiring a warm, moist atmosphere). Seed needs to be harvested from mature cones. Cones being placed into a glass jar in a warm dry spot until the seeds are released. 
- fungal attack - a black smut fungus develops on the honey-dew caused by sap sucking bugs
- insect attack - Sap sucking bug lives in the twigs (its white fine hair-like protruding tube being the only part which extends out of the branchlet and is visible) eating the sap and exuding a honey-dew which makes banchlets sticky (attracting other insects, see wildlife). Severe attact from these sap sucking bugs may lead to distored hanging branches often called witches\' brooms. Native cockroaches, weevils and crickets eat the cladodes. Long-horned beetles burrow into stems.
- not readily available.', architectural_uses: 'coastal plant - secondary
shade tree
street tree
windbreak', culture: 'The timber was used by early European settlers to construct roof shingles, kegs and casks. Today it is more valued for its decorative features (broad rays) and is made into ornamental items. Common she-oak is rarely cultivated and therefore its timber is not commercially available.
The wood of she-oaks is also known to have been used for traditional Aboriginal hunting weapons.', conservation: 'Susceptible to fire. Mature specimens appear to be able to survive most fires though are often greatly reduced in size. These trees are able to rejuvenate by resprouting from the base. In Kings Park, fires haven\'t been frequent enough or severe enough to damage the populations of Common she-oaks.
Plants are wind pollinated.', wildlife: 'Attracts:
birds, seed-eaters  (ringneck parrots eat the seeds which they extract from the cones) 
insects (supporting a wide array of insects including jewel beetles, Long-horned beetles, weevils, ants (twig mound ant), wasps, native cockroaches, crickets)', architectural_info: 'its compact nature and moderate size makes this native she-oak a good suburban / city tree. Bonsai specimen.', characteristics: 'variable shaped, compact, tree 6 - 12m. With a dense canopy.', environment: '- full sun
- partial shade  
- one drop - water during establishment.
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Allocasuarina fraseriana')
CurrentPlant.create(name: 'Common smokebush', common_name: 'Common smokebush, Smoke grass', family: 'PROTEACEAE', description: 'Profuse flowering. White plumes of floral display visible from a distance.', synonym: '', subspecies: '', location_name: '', general_info: 'growing naturally on coastal sandy or heavier soils.', additional_info: 'Extending from Shark Bay to Bunbury and Ongerup, east to Southern Cross.', identification: 'Multi-stemmed shrub, young shoots are silky (covered with hair). Leaves are terete (round in cross section), 7 - 20cm long x 0.5-1mm wide, being slightly channelled on the adaxial surface. Adult leaves are glabrous. Inflorescence is a leafy panicle of axillary spikes. Floral bracts 2-3mm long, woolly at the base, dark. Calyx white or smoky blue 5-7mm long. Flowering from July-November. Closely related to C. triplinervium, known as \'Tree smokebush\'.', physical:'- Terete foliage.
- Showing a profuse display of large, 20cm wide, white, floral spike, woolly flowers. Flowers during July - November [spring].
used for cut flowers or floral art', horticulture: '- Many young plants die in the first few years of establishment. If established successfully this resprouter can be long lived in cultivation.
- low maintenance required. usually frost tolerant. Difficult to establish. Many plants die. Once established it is long-lived. Prune after flowering.
- prune after flowering - well established adult plants (with a lignotuber) can be pruned after flowering to maintain shape. Note however young plants should not be pruned as they may die. 
- cutting - difficult to do with semi-hardwood cuttings, slightly better chances of success from lignotuber cuttings post fire or pruning.
seed - rarely propagated. Seed germination takes roughly 17 days, with success rates of 50%.
- not readily available. Some Australian plant nurseries.', architectural_uses: 'cottage plant
drought resistant
ornamental plant
potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: 'Profuse flowering bush. Visible floral display even from a distance.', characteristics: 'many-stemmed, woody shrub 1 - 2 m.', environment: '- full sun
- Prefers sand, well drained soils.
- Frost Tolerant
', scientific_name: 'Conospermum stoechadis')
CurrentPlant.create(name: 'Common woolly bush', common_name: 'Common woolly bush', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: 'taxonomic garden', general_info: 'Naturally growing on sandy soils in the Perth region (being most common on the Bassendean sands) and on the lateritic soils on the Darling Plateau.', additional_info: 'cygnus is Latin for \'swan\' and refers to its association with the Swan River (Western Australia).
Collected near Perth by J.A.L. Preiss in 1839 and James Drummond in the mid 1800s.

Being naturally found from Kalbarri to Collie and east to near Kulin (Western Australia).', identification: 'One of the tallest species of the genus. Its habit varies from small (<3m) and globular (rounded) in open (or disturbed) sites, to being taller (4m) and less spreading in woodland environments. Recognised by its woolly grey-green or grey-blue foliage, young shoots are red-tinged. Leaves are overlapping, dense, and blade is 3-branched, i.e. highly divided into terete, linear segments (note the lateral lobes are 2-branched the central lobe is usually undivided, with ultimate divisions 5-7). Leaves and branchlets are covered in hair (pubescent), making them woolly to touch (branches often becoming glabrous). Leaves may have small, globular orange-brown tips (nectaries). The flowers are single or in small groups at the ends of brachlets, inconspicuous, small red and tubular looking, and are hidden within the foliage (unusual for Adenanthos). Peduncle ca 1mm long, flowers lack a basal bract, involucral bracts 5-8; calyx greenish 15-28mm long with short hairs, limb 2-3.5mm long, bearded inside behind each anther. All stamens are fertile. Ovary glabrous; style 26-37mm long, glabrous. Flowering is over much of the year.
There are two forms of A. cygnorum, both of which can be seen in the metropolitan region. A prostrate form (A. cygnorum subsp. A. chamaephyton) growing on lateritic soil near Mundaring, Chidlow, Muchea and Collie and the more common upright form (A. cygnorum subsp. A. cygnorum) which ranges from Kalbarri to Collie east to Kulin (common to the Perth metropolitan region). This species is easily confused with A. sericea another Woollybush which has finer, softer foliage, and is commonly cultivated throughout Perth, being the favoured species.', physical:'- Attractive, woolly grey, green foliage.
- Showing a inconspicuous display of medium, 3 - 4cm wide, red flowers. Flowers during August - March [spring, summer].', horticulture: '- low maintenance required.
- minimal - prune to maintain desired shape 
- cutting - propagate from half-ripened tip cuttings taken in summer.
- not readily available.', architectural_uses: 'ornamental plant
potted specimen
windbreak', culture: '', conservation: 'Woolly bush establishes itself well in disturbed sites.
The production of nectaries at the ends of the highly divided linear leaves attract ants to the plant. This trait is thought to help in the minimisation of foliage predation by harmful insects. Most of these ant species (seventeen of which have been recorded) also remove the fruits, storing them in their nests. Such practice results in seed dispersal, with uneaten seed germinating later when brought to the soil surface due to some disturbance. Other animals which pick up seed from the ground such as rodents and the occassional seed-eating bird play only minor roles in seed dispersal.', wildlife: 'Attracts:
birds, honey-eaters 
the flowers produce large amounts of nectar and attract many birds including the western spinebill and the singing brown, tawny-crowned and New Holland honeyeaters
birds, nesting / perching 
many species of honeyeaters use the dense foliage for protection and nesting
birds, seed-eaters 
seeds which collect in the cups of leaves along the stems attract many birds, predominantly the introduced laughing turtle-dove. These seeds once attracting native bronzewing pigeons, parrots, quails.
insects 
nectaries attract ants, wasps are attracted to moth larvae burrowed in the branches (the wasp laying her eggs into the moth larvae, whereby the wasp larvae eat out the moth larva).
mammals 
seeds are often foraged by native rodents', architectural_info: '', characteristics: 'round-shaped, woody shrub >2m. With a dense canopy.', environment: '- full sun  
- one drop
- Prefers well drained soils.', scientific_name: 'Adenanthos cygnorum')
CurrentPlant.create(name: 'Coojong', common_name: 'Coojong, Orange wattle, Golden wreath wattle, Wuanga', family: 'MIMOSACEAE', description: 'Large fluffy looking flowers are attractively hung on pendulous branches. Fast Growing, hardy plant, very good coloniser (great for disturbed landscapes) - may become a WEED if its environment is not restricted.', synonym: 'A. cyanophylla', subspecies: '', location_name: 'adjacent to CALM offices near swan river', general_info: 'Hardy species suited to most soil types and environmental conditions. Found inhabiting dry sandy, calcareous, sands or siliceous soils of low fertility near the coast. Has been known to grow in clay soils, that are poorly drained but not boggy and dry out in summer.', additional_info: 'Specific name originating from ; either saligna Latin for \'like Salix\' - the Willow, or salignus Latin for \'willow wood\'. Both referring to the similar drooping nature of the branchlets and phyllodes with the willow.
\'Orange Wattle\' is a confusing common name as it gives the idea that the flowers are orange when they are predominently yellow, \'Golden wreath wattle\' is preferable in this case. \'Coojong\' and \'Wuanga\' are Aboriginal names, the later used by communities in the south-west of Western Australia, both names being highly specific.

Collected near Esperance in 1792 by Jacques Julien Houton de Labillardiere (1755-1834), an explorer and botanist who accompanied d\'Entrecasteaux during his expedition.

Originating from the south-west of Western Australian extending north to the Murchison River, south to the south coast and east almost to Israelite Bay, being naturalised in other states such as the coastal areas of South Australia, Victoria, New South Wales and Queensland.', identification: 'Phyllodes, green to dark green (occasionally bluish), linear-lanceolate sometimes falcate, 10-25cm long x 1-2cm wide, tapering gently towards the tip, drooping from branches. A conspicuous single large gland close to the swollen base; phyllodes having a prominent mid-rib. Note the phyllodes are highly variable ranging in size and shape, generally being larger towards the base of the plant (however these larger phyllodes at the base are not seen in specimens near Geraldton). Galls (insect attack) are often seen on the stems. Inflorescence is an axillary raceme 5-6cm long with 5 to 10 deep golden-yellow to orange globular flower heads (1.5cm across, consisting of 25-60 flowers) on a 1cm long peduncle. Flowers are faintly perfumed, flowering period generally short. Seed pod is light brown, smooth, linear to slightly curved, 5-12cm long x 5-7mm wide, flat and constricted between the 8-12 seeds. Seeds dark brown to black, ellipsoid (5-6mm x 3-3.5mm) are arranged longitudinally in the pod. Seeds being hard coated, long lived.', physical:'- Long, drooping, dark green foliage.
- Showing a profuse display of small, 1.5cm wide, yellow, globular, ball-like flower head flowers. Flowers during August - November [spring].
- 5 - 12cm wide fruit. Fruits are seed pod.
- 0.5-0.6cm wide, black, ellipsoid seeds.
Seed edible
- smooth dark grey', horticulture: '- Prolific reproducer with extensive root system. This introduced species is known as a weed in eastern New South Wales, western Asia and southern Africa. 
- low maintenance required. Is known to grow over a metre within a year, when young. Very lime tolerant. Usually frost tolerant. Tolerant of Phytopthora cinnamomi. 
- prune after flowering 
- fungal attack - the \'gall rust fungus\' often causes the large swellings (galls) on the branchlets or stems.
- insect attack - larvae of the jewel beetle Castiarina rufipennis tunnels into the stem, cutting it cleanly. The end of the branchlet dying and falling from the tree (the branch looks as though it has been pruned by secateurs). Galls seen on branchlets may be caused by a type of weevil.
- readily available. commonly cultivated', architectural_uses: '- coastal plant - secondary
- drain clogger
- fence screener
- freeway sites
- ornamental plant
- reduces erosion - soil binder
- shade tree
- street tree
- windbreak', culture: 'Seeds are crushed into a flour like state and eaten with smashed up root bark from certain eucalypts (E. cornuta).', conservation: 'A. saligna is a good coloniser, inhabiting many disturbed environments such as road verges and demolition sites. In response to fire Coojong appears variable, some specimens resprouting from the ground, others being killed.
Coojong has an anti-predation mechanism associated with its foliage. The occurence of nectaries (sugar rich glands) at the base of the phyllodes attract ants. This association with ants has been linked to a reduction in the number of leaf-eating insects. Studies have discovered that the nectaries adjacent to the youngest, generally most palatable phyllodes, produce the largest quantities of sugar fluid, which supports the nature of this adaptive trait.', wildlife: 'Attracts:
birds, insect-eaters 
birds, nesting / perching 
birds, seed-eaters 
butterflys 
insects (A huge diverse array of insects are attracted to this plant. Especially during flowering. Ants are attracted to the nectaries.)
reptiles (attracted to pray upon the associated insect populations)', architectural_info: 'Weeping form. Its extensive root system being popular for combating soil erosion (dune stabilisation, gully erosion control). Fire retarder.', characteristics: 'bushy, spreading, tree < 6m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop
- Frost Tolerant', scientific_name: 'Acacia saligna')
CurrentPlant.create(name: 'Coral gum', common_name: 'Coral gum, Coolgardie gum, Coolgardie rose, Coral-flowered gum', family: 'MYRTACEAE', description: 'One of the most popular small eucalypts in cultivation. Long flowering, drought resistant. Cut flowers, buds and fruit may be used in dried floral arrangements. Blossoms when very young.
', synonym: '', subspecies: '', location_name: 'taxonomic garden', general_info: 'Suited to dry areas on light to medium soils, and an inhabitat of fairly heavy soils on stony hills, adaptable to most soils (sands and loams as long as they are well drained). Being found on stony dioritic country near Coolgardie.', additional_info: 'Latin torquatus meaning \'collar or necklace\' referring to the buds and fruit having a little collar near the bud cap. 
The common names referring to the flower colour or its native distribution. The term \'gum\' is not usually used for rough bark trees. 
Being first discovered by L.C. Webster near Coolgardie in 1901. Named by J.G. Luehmann, of Melbourne. 
Originating from the central and southern goldfields of Western Australia. From Coolgardie southwards for 100km or so.', identification: 'Distinguished by its bark and attractively shaped buds (shiny red, wax-like with pointed caps) and fruit (brown), which hang in clusters. Leaves lanceolate 10-15cm long and 2.5-3cm wide, slightly falcate, the petiole to 1.5cm long; margin distinctly reddish; glandular and strongly aromatic, coriaceous and rigid, dull grey-green, the petiole and upper twigs red. Flowers ranging from salmon-pink to cream-coloured, borne in a pendulous axillary umbel ot 2 to 7 on pedicels to 1.5cm long. Peduncles to 2.5cm long slender, drooping, reddish; buds urceolate to 2.5cm long and 9mm across with 9 or 10 conspicuous projecting ribs at the base and the bottom of the operculum with a smooth curved beak about 1cm long (bud cap is horn like). Flower filaments pink or rosy-crimson, with creamy-white anthers, flowers honey scented. Fruit capsules are brown to red-brown, cylindrical-urceolate to 1.5cm long with a projecting ring of 9 to 10 ribs at the base, reddish green at first, maturing to red-brown the valves deeply inserted. Seeds are ovoid to elliptical, radially striate.', physical:'- Attractive, dull blue-grey, green foliage.
- Showing a profuse display of pink, drooping flowers. Flowers during June - December [spring, winter].
perfumed
used for cut flowers or floral art
- Medium, 1.5cm wide, brown fruit. Fruits are globular to cylindrical-urceolate.
- Small, gray, deeply pitted seeds.
- Rough greyish bark, flaky and shallowly furrowed. Upper branches are smooth grey-brown, the youngest twigs and branchlets smooth, red and glossy. The wood is dark brown.', horticulture: '- Blossoms when very young, 3-4 years old and less than 1m tall (in cultivation). 
- low maintenance required. Moderately frost resistant. Very lime tolerant. in higher rainfall districts it may need protection from certain fungi (requiring the application of fungicides).
- minimal - light pruning such as the removal of lower branches and staking when young may be beneficial
- seed - young plants should be transplanted not later than the middle of May. The species is probably self sterile so it is advisable to grow two or more trees to secure fruits and seed. Seed has been collected during summer. Fertile seeds are black, D-shaped or elliptical 2-4mm long with a raised net-like pattern. Sterile seed are red-brown, shortly wedge-shaped or narrowly angular 1-3mm long with a fine net-like pattern. There is an average of 92 viable seeds per gram of fertile sterile seed.
- insect attack - trunks are susceptible to termites
Phytophthora cinnamomi (dieback)
- readily available. commonly cultivated throughout Australia (particularly in arid climates). Has been hybridized with E.woodwardii to produce \'Torwood\' and with E. erythronema var. erythronema to produce \'August Wonder\', both are popular as ornamental trees requiring further research to make them more reliable. Coral gum has also been cultivated overseas in California and Arizona.', architectural_uses: 'coastal plant - secondary
drain clogger
drought resistant
ornamental plant
potted specimen
reduces erosion - soil binder
shade tree
street tree
windbreak', culture: 'Its distribution has been used as an indicator for ultrabasic rock in the Kambalda area. 
The wood has only been used as firewood, though tannin content of the bark has been measured at 17.6%. 
Coral gum produces ample pollen and nectar for good honey flow and is of considerable value to the bee-keeper (especially as it flowers when small).', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: 'Commonly used as a street tree in rural and outback towns across Australia (including Bourke, Kalgoorlie and Alice Springs) as it is drought resistant. Foliage contrasts sharply with the deep grey bark of the trunk and the base of the branches. Flowers quite well when grown in large tubs (within 1 to 2 years). Firewood tree.', characteristics: 'graceful, shapely, compact, tree 6 - 12m. With a vigorous growth rate.', environment: 'full sun
one drop
Prefers loam, well drained soils.
Frost Tolerant
Salt Tolerant', scientific_name: 'Eucalyptus torquata')
CurrentPlant.create(name: 'Couch', common_name: 'Couch, Bermuda grass, Indian doab, South African couch', family: 'POACEAE', description: 'good lawn species, using less water than many others', synonym: '', subspecies: '', location_name: 'Agriculture glasshouse area near orchard', general_info: 'Adapts to most soil types including sandy and clayey soils. Requires less water than most lawns, tolerating hot dry conditions.', additional_info: 'Native to Europe, having naturalised in temperate regions throughout Australia.', identification: 'Stem of the grass is either prostrate or ascending to 30cm. Leaf sheath tight at first, becoming loose. Blades 1-7cm long x 0.1-0.4 cm wide, folded or flat, glabrous or scabridulous, acute to pungent.
Common in the south-west, Pilbara and Kimberley regions of Western Australia.', physical:'- Medium to fine textured, green foliage.
- Showing a inconspicuous display of small flowers. Flowers during October, November.', horticulture: '- Considered a weed in New Zealand and in many regions of the USA. Spreads quickly by underground (rhizomes) and surface runners (stolons). 
- High maintenance required. Requiring care and regular maintenance if kept as a lawn. Thrives when winters are not too severe. Frosts will damage this plant, often causing it may turn brown in winter.
- Regular mowing
- Seed - note that runners and turf can be readily transplanted.
- Readily available. popularly cultivated and widespread throughout Australia as a lawn grass', architectural_uses: '- groundcover
- groundcover suitable to dominate large expanses', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '- rhizomatous
- stoloniferous
- spreading
- Perennial grass 15 - 30cm. 
- With a vigorous growth rate.
', environment: '- Full sun', scientific_name: 'Cynodon dactylon')
CurrentPlant.create(name: 'Couch honeypot', common_name: 'Couch honeypot, Budjarn', family: 'PROTEACEAE', description: 'golden brown rounded flower heads displayed in winter and spring', synonym: '', subspecies: '', location_name: 'UWA Campus: Taxonomic garden', general_info: 'naturally growing on sandy or gravelly soils.', additional_info: 'Budjarn is the name given to this plant by south-west Western Australian Aborigines.
Naturally inhabiting near-coastal regions, extending from north of Dongara to east of Esperance.', identification: 'Variable plant. Branches are erect and / or prostrately spreading. Generally small to 15cm high, can reach up to 0.5-1m tall. Leaves are narrow and long (7-14cm long x 0.5-1.8cm wide), finely toothed (fern-like with divisions nearly to the mid-rib, lobes are nearly triangular in shape and pointed, margins are revolute), smooth dark green with a white underside. Flower head is rounded and golden-brown, generally set amongst the foliage, borne at the ends of branchlets. Prominent brown hairy bracts. Flowering from winter to spring (predominantly May - September).
Occurring on a variety of soils on the Coastal Plain, Darling Range and Scarp. Form is more variable outside the Perth region.', physical:'- Attractive, narrow, finely toothed, dark green foliage.
- Showing gold, rounded floral head flowers. Flowers during May - November [spring, winter].
- used for cut flowers or floral art
- Small, winged seeds.', horticulture: '- Hardier than most of the other Dryandra species.
- Soils should be low in nutrients (Nitrogen and Phosphorus)(no fertilising required) due to their adaptation to such soils. If leaves become yellow Iron-deficiency is likely and can be corrected by the use of iron chelates
- Problems in cultivation have been due to their susceptibility to die-back (Phytophthora cinnamomi). Therefore it is vitally important to plant on well-drained soil or a raised garden bed. Mulching around the roots or covering the soil surface with a groundcover helps to keep the soil at a constant temperature, favoured by most species.
- low maintenance required. Potted specimens should be watered moderately, less in cool environments. 
- cutting - Propagation from cuttings can be difficult.
- seed - Seed should be sown in autumn or spring. Seedlings need to be carefully watched and checked for fungal disease (damping off) (water carefully). Seedlings not favouring excessive humidity (plants under glass need to be well ventilated).
- Phytophthora cinnamomi (dieback)', architectural_uses: 'groundcover
potted specimen
reduces erosion - soil binder
rockery plant', culture: 'Flowers are rich in nectar and can be sucked upon opening.', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters', architectural_info: 'best set an elevated position in the rockery - to give it good drainage and a better display of its foliage and flowers.', characteristics: 'ground-hugging, suckering, woody shrub < 1m.
', environment: '- full sun
- partial shade  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Dryandra nivea')
CurrentPlant.create(name: 'Creeping Boobialla', common_name: 'Creeping Boobialla', family: 'MYOPORACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Myoporum - Greek.', identification: 'Prostrate bush/groundcover less than 25 cm. Dense linear- oblong leaves 2-3 cm x 5 mm - green or purple on trailing stems. Flowers 12 mm across. Petals white or pink with purple spots in late spring/summer. Stamens 4.', physical:'- Attractive, linear-oblong, dark green foliage
- Showing a inconspicuous display of small, white perfumed flowers. Flowers during September - February [spring, summer]', horticulture: '', architectural_uses: '- Coastal plant (secondary)
- Cottage plant
- Groundcover suitable to dominate large expanses
- Groundcover suitable with some trees or shrubs
- Groundcovers for small areas between shrubs or driveway strips
- Lawn alternative
- Plants for paving and wall crevices
- Reduces erosion (soil binder)
- Rockery plant
- Tolerates harsh conditions
- Trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '- Prostrate groundcover, 1m
- Perennial herbaceous shrub < 1m
- Dense canopy
- Vigorous growth rate
', environment: '- Full sun
- Partial shade', scientific_name: 'Myoporum parvifolium')
CurrentPlant.create(name: 'Creeping fig', common_name: 'Creeping fig, Fig', family: 'MORACEAE', description: 'vigorous creeper', synonym: '', subspecies: '', location_name: 'Great Court', general_info: 'best grown in a fertile soil', additional_info: 'These plants are commonly known as \'Figs\' as their fruits resemble that of the edible fig.', identification: 'Leaves are bright green, heart-shaped 2-3cm long when young, becoming larger, leathery more oval shaped 3-8cm long when mature (mature leaves only seen in warmer climates). Note young foliage is bronze coloured. Fruits are up to 6cm long, unpalatable, orange ripening to red-purple colour.', physical:'- Heart-shaped to oval, green foliage.
- Showing a inconspicuous display of small flowers.
- Medium, 6cm wide, red fruit. Fruits are unpalatable fig. Fruiting bodies are minimal in their abundance.', horticulture: '- Often slow to grow initially, later becoming quite vigorous. The aerial roots attach themselves to stone or brick, slowly destroying it over time. Best to re-pot when roots are very cramped, note that figs prefer situations where their roots are overcrowded. 
- regular pruning - watch carefully and prune back before it takes over. Woody branches which stand out from the main support should be removed.
- cutting - semi-hardwood cuttings
- don\'t over water - containerised house plants may lose foliage from over-watering.
- fungal attack - fungi may also cause some leaf damage.
insect attack - may be susceptible to attack from Lerps, red-spider mite and fig-beetles (causing defoliation).', architectural_uses: '- fence screener
- potted specimen
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '- neat
- Perennial climber 6 - 12m with a vigorous growth rate.', environment: '- full sun
- partial shade
- Prefers well drained soils.

', scientific_name: 'Ficus pumila')
CurrentPlant.create(name: 'Crossberry', common_name: 'Crossberry, Lavendar star', family: 'TILIACEAE', description: 'bears attractive pink star-shaped flowers in summer', synonym: '', subspecies: '', location_name: '', general_info: 'prefers moist well mulched soil', additional_info: 'Native to Africa.', identification: 'Leaves are oval shaped up to 7.5cm long. Flowers are star-shaped (with a mass of central stamens), pink-mauve borne in summer. Berries are brown and 4-lobed.', physical:'- Oval, green foliage.
- Showing medium, pink, star-shaped flowers. Flowers during December - February [summer].
- brown fruit. Fruits are 4-lobed berry.', horticulture: '- regular pruning - pruning is required to maintain a compact shape.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'bushy, woody shrub >2m. With a vigorous growth rate.
', environment: 'partial shade
Prefers well drained soils.

', scientific_name: 'Grewia occidentalis')
CurrentPlant.create(name: 'Curly palm', common_name: 'Curly palm, Sentry palm', family: 'ARECACEAE', description: 'Attractive feathered leaves and smooth trunk. Commonly grown indoors.', synonym: '', subspecies: '', location_name: 'Winthrop Hall - south side', general_info: '', additional_info: '', identification: 'Trunk is straight, smooth, ringed. Leaves are stiffly arching, pinnate (feather-like), dull green to 5m long. Flowers are borne in unbranched, pendulous, spike to 1.2m. Flowers are male (light brown) or female (green). Fruits are glossy and green.', physical:'- Attractive, arching, feather-like, green foliage.
- Showing 120cm wide, green, unbranched spike flowers.
- Showing brown flowers.
- green fruit. Fruits are glossy.', horticulture: '- seed - Propagate from seed in spring. Maintain environment at 24 degrees C or above', architectural_uses: '- indoor plant
- ornamental plant
- potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: 'good for smaller gardens', characteristics: 'single stemmed, slender, palm 6 - 12m.', environment: '- partial shade
- tolerates full shade
- Prefers well drained soils.
', scientific_name: 'Howea belmoreana')
CurrentPlant.create(name: 'Cushion bush', common_name: 'Cushion bush', family: 'ASTERACEAE', description: 'Attractive dwarf silver foliaged shrub. This native blends well with exotics.', synonym: 'Calocephalus brownii', subspecies: '', location_name: 'Agriculture garden', general_info: 'Naturally growing on dunes and sandy hollows in beach rocks. Grows on most soil types', additional_info: 'Extending from Shark Bay to Augusta and along the southern coast to Esperance. Occuring on Rottnest, Garden and Carnac Islands.', identification: 'Dwarf shrub appears as a silvery mound. Tiny scale-like grey leaves are pressed against the stems. Branches are velvety due to the covering of white woolly hairs. Stems are rigid, angled upwards. The terminal flowers are small globular greenish-yellow heads 1cm wide (heads are silver when young), produced mainly in summer though can be seen year-round. Florets are minute, tubular, yellow, borne in groups of 3, being surrounded by white woolly bracts. The fruits is a dry indehiscent one-seeded fruit with a down of 8-10 long feather-like hairs.', physical:'- Attractive, tiny, scale-like, silver foliage.
- Showing a moderate display of small, 1cm wide, yellow, globular head flowers. Flowers during September - February [spring, summer].
', horticulture: '- Low maintenance required. very lime tolerant, usually frost resistant
- Prune after flowering - pinch tips of young plants to promote bushy habit
- Cutting - semi-ripe tip cuttings
- Seed - in late summer
- Fungal attack - susceptible to botrytis in damp conditions
- Readily available', architectural_uses: '- Coastal plant (primary)
- Hedge
- Potted specimen
- Reduces erosion (soil binder)
- Rockery plant', culture: '', conservation: 'This pioneer plant is hardy and withstands the environmental pressures associated with foredunes. The covering of this plant by white woolly hairs is thought to be an adaptive feature to sheild the plant against light (i.e. the surface is reflective).', wildlife: 'Attracts
- Birds
- Insect eaters', architectural_info: 'makes a good foliage contrast, can be used as a dwarf hedge. Foliage can incorporated into floral arrangements. This native blends well with exotics.', characteristics: '- Compact
- Much-branched
- Rounded
- Perennial herbaceous shrub < 1m', environment: '- Full sun
- Frost tolerant
- Salt tolerant
- One drop
- Wind tolerant
- Prefers well drained soils', scientific_name: 'Leucophyta brownii')
CurrentPlant.create(name: 'Cut-leaf daisy', common_name: 'Cut-leaf daisy', family: 'ASTERACEAE', description: 'Long flowering perennial ground-cover. The pretty daisy-like flowers (which range in colours from white, pink, mauve to blue, centred with black and gold) make these plants very attractive as rockery, border and groundcover plants. The trailing nature of this plant also making it highly suitable for potted or basket specimens. This plant blends well with exotics.', synonym: '', subspecies: '', location_name: 'Great Court, bordering Tropical Grove', general_info: 'will grow in a wide range of soils, prefers full sun. Tolerates periods of temporary inundation.', additional_info: '', identification: 'leaves are soft, finely divided to 6cm long, daisy-like flowers (2cm wide) may be pink, white, mauve or lilac-blue which are most prominent on the plant from spring to summer, though flowering can be year-round.', physical:'- Attractive, soft, highly divided, green foliage.
- Showing a profuse display of small, 2cm wide, pink, daisy-like flowers. Flowers during September - February [spring, summer].', horticulture: '- Preferring a sheltered spot in the garden and some root protection. Favours dry conditions, not liking overwatering. May die back during prolonged dry periods, but will rejuvenate after watering or rain.
- low maintenance required. tolerates minimal care and attention. Usually frost resistant. Suckering plant which forms new shoots from roots - allowing it to rapidly form a dense ground cover.
- pinch out growing tips - Pruning consists of pinching out of early shoots to encourage branching and a bushy habit. Prune back older branches and shape as desired
- division - suckering habit allows for easy division of clumps in spring or autumn.
- readily available. many cultivars are available:
a) \'Break of Day\' which has masses of dark mauve flowers year-round,
b) \'Pink Haze\'
c)\'Lemon Drops\' bears masses of lemon coloured flowers in spring and summer
d) B. multifida var. dilatata has more compact leaves and form (minature plant).', architectural_uses: '- basket plant
- coastal plant - secondary
- indoor plant
- potted specimen
- reduces erosion - soil binder
- rockery plant
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'provides colour for most of the year, trailing form makes it attractive in pots and hanging baskets. This floral display is especially attractive in mass plantings. They are often incorporated into native gardens to provide a \'splash\' of instant colour.', characteristics: 'clump-forming, compact, Perennial herbaceous shrub < 1m.', environment: '- full sun
- partial shade
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Brachyscome multifida')
CurrentPlant.create(name: 'Cutleaf hibbertia', common_name: 'Cutleaf hibbertia, Cutleaf Guinea flower', family: 'DILLENIACEAE', description: 'provides a splash or yellow colour in the garden', synonym: '', subspecies: '', location_name: 'UWA Campus: Agriculture Garden', general_info: '', additional_info: 'Widespread throughout the south-west of Western Australia, along the coast and inland to the Karri forest.', identification: 'One of the tallest hibbertias. Leaves are dark green, wedge-shaped (2-3cm long, 0.5-1.1cm wide), simple, alternate, with toothed margins, deciduous - leaving a prominent leaf scar. Flowers are bright yellow (2.5-4cm wide), rotate, with 5 broad and spreading petals (buttercup-like) with a cluster of yellow stamens in the centre, borne in spring and summer. Flowers terminate axillary branches, solitary. Seed is borne in a rounded follicle. Seed reddish brown, shiny, kidney-shaped to globular.
Found on the coastal dune systems in the Perth Metro region.

Note some variation in flower and leaf size exists (specimens showing larger traits in the south-west corner as opposed to Perth forms)', physical:'- Wedge shaped, toothed, dark green foliage.
- Showing a moderate display of medium, 2.5 - 4cm wide, yellow, spreading flowers. Flowers during September - February [spring, summer].
- Small, brown, kidney-shaped to rounded seeds.', horticulture: '- not reliable on the east coast
- prune after flowering - Pruning involves cutting back the flower shoots after the bloom. This helps to maintain a compact form.
- cutting - Propagate from soft-tip / half-ripened tip cuttings in spring. Strike into a sand/peat mix and keep in a warm and humid environment.', architectural_uses: 'coastal plant - secondary
potted specimen
rockery plant', culture: '', conservation: '', wildlife: 'Attracts:
birds, insect-eaters', architectural_info: '', characteristics: 'erect, bushy, woody shrub >2m. With a vigorous growth rate.', environment: 'full sun
partial shade   
one drop
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Hibbertia cuneiformis')
CurrentPlant.create(name: 'Devil\'s pins', common_name: 'Devil\'s pins', family: 'FABACEAE', description: 'attractive purple pea-shaped flowers produced in late winter and spring.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Extends from Mt Lesueur to Perth, Albany to Esperance, inland at Coolgardie.', identification: 'Reaching 1-1.5m tall (note, often taller in its native habitat).
Leaves are dark green, narrow (0.5-2cm long x 1-3mm wide), prickly (apex pungent), strongly recurved margins, coriaceous, generally sessile. Flowers are bright purple (1.2-1.6cm wide) (purple - blue corolla with a white to yellow \'eye\'), borne in small axillary clusters 1-3 per axil, produced in winter and spring. Pod light brown (5-7mm long x 9-12mm wide).

May be confused with H. stricta.', physical:'- Irritating, narrow, linear, prickly, dark green foliage.
- Showing small, 1.2 - 1.6cm wide, pink, pea-shaped flowers. Flowers during June - November [spring, winter].
used for cut flowers or floral art
- Small, 0.5 - 0.7cm wide, brown fruit. Fruits are 2-valved, dehiscent.
- ellipsoid seeds.', horticulture: '- prune after flowering - Prune lightly after flowering, to encourage a denser form.
- seed - Propagate from seed (collect as soon as ripe). (pre-treatment : soak seed in hot water for 24 hours prior to immediate sowing, or scarification). Grow seedlings in a warm moist environment.', architectural_uses: 'potted specimen
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'erect, rigid, bushy, woody shrub 1 - 2 m. With a open canopy.
', environment: 'partial shade
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Hovea pungens')
CurrentPlant.create(name: 'Diosma', common_name: 'Diosma', family: 'RUTACEAE', description: '', synonym: '', subspecies: '', location_name: 'Great Court', general_info: '', additional_info: '', identification: 'wiry stemmed. Bright green leaves are soft, heath-like and aromatic when crushed. Small, 5-petalled, pink flowers are borne in terminal clusters at the ends of stems in late winter to spring.', physical:'- Attractive, soft, heath-like, green foliage.
- Showing a moderate display of small, pink, 5-petalled flowers. Flowers during August - November [spring].
used for cut flowers or floral art', horticulture: '- winter moisture stimulates flowering
- low maintenance required. Copes with temperatures to 0 degrees C. Potted specimens should be watered moderately when in full growth, less at other times.
- prune after flowering - to maintain shape and improve the bushy habit
- cutting - semi-ripe cuttings in summer
- readily available.', architectural_uses: 'hedge
potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: 'Common as a border plant along lawns or banks.', characteristics: 'domed, spreading, woody shrub 1 - 2 m.', environment: '- full sun
- partial shade
- Prefers well drained soils with a neutral to acidic pH.', scientific_name: 'Coleonema pulchrum')
CurrentPlant.create(name: 'Dune Moses', common_name: 'Dune Moses', family: 'MIMOSACEAE', description: 'Useful small dense shrub for coastal areas. profuce flowering May-Oct.', synonym: '', subspecies: '', location_name: '', general_info: 'Occurs on secondary sand dunes. Useful coastal plant. May survive without watering once established.', additional_info: '', identification: 'unusual acacia as it has leaves not phyllodes. leaves are binnate with 2 to 6 pairs of leaflets, leaflet margins rolled backwards. 1-2 spines in each leaf axil. Globular flower heads with 16-50 flowers. Flat pod 40 mm x 5 mm.', physical:'- Irritating, Bipinnate 1-1.5 cm long, 2-6 pairs of leaflets, dark green foliage.
- Showing a profuse display of medium, Heads 1 cmcm wide, gold, Globular heads, 16-50 flowers, mainly anthers flowers. Flowers during May - October [winter].
- Medium, 4 x 0.5 mmcm wide, brown fruit are displayed during November - January. Fruits are brown-black pod. Fruiting bodies are minimal in their abundance.', horticulture: '- Useful small shrub on coastal areas. profuse flowering. Short lived if irrigated. 
- low maintenance required. May be able to survive without watering once established. Seed (nicked) can be spread for sowing in late summer/autumn.
- readily available. Available from coastal and Australian plant nurseries. Also available as seed. Prostrate forms available.', architectural_uses: '', culture: '', conservation: 'Useful small dense shrub for coastal plantings.', wildlife: '', architectural_info: 'Useful small dense shrub for coastal areas. Profuse flowering May-Oct. Perennial but not long-lived if irrigated (<5 y). Prickly.', characteristics: 'dense shrub, 1 x 1 m, woody shrub < 1m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- one drop - may require summer watering.
- Prefers all types, well drained soils, with a neutral to alkaline pH.
- Frost Tolerant
- Wind Tolerant', scientific_name: 'Acacia lasiocarpa')
CurrentPlant.create(name: 'Dwarf peppermint', common_name: 'Dwarf peppermint', family: 'MYRTACEAE', description: 'Attractive hedge plant, with new foliage being red tinged.', synonym: '', subspecies: '', location_name: 'Sunken garden, Biological Sciences Library, Agriculture Garden', general_info: 'hardy plant growing in most soil types, preferring organically enriched soil which have better water retention properties.', additional_info: 'flexuosa is Latin for \'bent\' and describes the zigzag pattern of branches. \'nana\' being Latin for dwarf, and refers to the small habit of the plant. A. flexuosa is commonly known as \'Peppermint Tree\', Peppermint describing the fragrance of the leaves when crushed. This cultivar extends its name with the prefix \'dwarf\' making it known as \'Dwarf peppermint\'.
This is a cultivated variety of plant (formed during propagation in nursery or garden environments), does not have a natural distribution. Its parent A. flexuosa being distributed from Perth southward along the coast to Bremer Bay and inland to Boyup Brook.', identification: 'This plant is a dwarf form of A. flexuosa.
A. flexuosa can be identified by the following; 
Leaves are dark green (on both sides), alternate, linear-lanceolate, slightly falcate, 10-12cm long and 6-10mm wide (juvenile leaves broader than mature leaves); distinctly petiolate - petiole 0.8-1.3cm, apex attenuate; base cuneate; margine entire; 3 main longitudinal veins; leaves covered with transparent oil glands which produce a strong scent when crushed. Foliage is dense on slender zigzag-ing twigs, often forming a rounded crown. Inflorescence is a pubescent umbellate head of 10-15 flowers in the axils of the 1 year old shoots; flowers rotate, of 5 obovate petals to 5mm long with a narrow claw at the base, being 1.5cm across, pure white with dull crimson disc; stamens roughly 20, 1.5mm long in groups of 4 or 5 on the rim of the receptacle between the petals. Flowers lightly perfumed. Fruit is a sessile aggregated cluster of 6 to 9 capsules (5-8mm wide); capsules 3 valved (3-4mm across); seed is brown, minute and numerous.

Note that such dense folige on slender zigzag-ing twigs, often forms a rounded crown on this medium shrub. It is readily identified from other small cultivars by its reddish coloured juvenile foliage.', physical:'- Linear-lanceolate, aromatic, green foliage.
- Showing small, white, sessile flowers.
perfumed
- Small fruit. Fruits are woody capsule.
- Small, fine seeds. Seed is profuse in its abundance.', horticulture: '- prune after flowering - may need extensive pruning to maintain shape, especially if used as a hedge
- cutting - propagate from a) soft- tip cuttings, note that cultivars must be vegetatively cultivated to preserve their clonal identity. Cuttings to be hormone treated and placed under mist in a controlled environment b) firm-wood scions can be approach-apical-grafted on 1 year old understocks of A. flexuosa. 
- slugs and snails - generally pest free, it may be attacked by webbing caterpillar
- readily available. several other dwarf cultivars are also available, \'Fairy Foliage\', \'Variegata\' and \'Weeping wonder\'.', architectural_uses: 'hedge
potted specimen
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rounded, spreading, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.
', environment: '- full sun
- one drop
- Prefers well drained soils.', scientific_name: 'Agonis flexuosa \'nana\'')
CurrentPlant.create(name: 'Endeavour bottlebrush', common_name: 'Endeavour bottlebrush, \'Little Penta\'', family: 'MYRTACEAE', description: 'Rounded shrub. Stunning display of vibrant pink globular bottle brushes in late spring.', synonym: '', subspecies: '', location_name: '', general_info: 'Coastal plant, south coast Albany to Esperance.', additional_info: '', identification: 'Small rounded woody shrub with grey-green foliage. Massed display of vibrant pink globular bottle-brushes late spring/early summmer. Rounded to narrow oblong leaves 2-3 cm.', physical:'- Grey-green rounded to narrow oblong, light green foliage.
- Showing a profuse display of medium, 3 cmcm wide, pink, Globular bottle brush flowers. Flowers during September - November [spring].', horticulture: '- Selected forms available \'Little Penta\' 
- low maintenance required. Prune after flowering to keep shape.
- readily available. Australian Plant nurseries', architectural_uses: 'coastal plant - secondary
cottage plant
ornamental plant
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'Rounded shrub. Stunning display of vibrant pink globular bottle brushes in late spring.', characteristics: 'Rounded woody shrub, 1 x 1 m, woody shrub < 1m. With a vigorous growth rate.
', environment: 'full sun
partial shade
Frost Tolerant   
Wind Tolerant', scientific_name: 'Melaleuca pentagona')
CurrentPlant.create(name: 'English Ivy', common_name: 'English Ivy, Common Ivy', family: 'ARALIACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'ABC Gardening Australia \'Flora\' Encyclopaedia Botanica', identification: 'Multiple varieties', physical:'- 3-5 lobed, 4-6 cm. Adult - unlobed, dark green foliage.
 - Showing a inconspicuous display of small, green/yellowish umbels flowers.
- Small, black fruit. Fruiting bodies are inconspicuous in their abundance.', horticulture: '- Propogate from juvenile cuttings. Can smother other plants.
- Moderate maintenance required. Pruning necessary to keep it under control
- Readily available.', architectural_uses: '- Fence screener
- Groundcover
- Groundcover suitable to dominate large expanses
- Groundcover suitable with some trees or shrubs
- Lawn alternative
- Tolerates harsh conditions', culture: '', conservation: '', wildlife: '', architectural_info: 'Spreading ground cover and expansive wall cover.', characteristics: '- Climber 
- 6-18 m
- Perennial climber 6 - 12m.', environment: '- Full sun
- Partial shade
- Tolerates full shade 
- Two drop
', scientific_name: 'Hedera helix')
CurrentPlant.create(name: 'Fiery bottlebrush', common_name: 'Fiery bottlebrush, Western bottlebrush, Toobada, Lesser bottlebrush', family: 'MYRTACEAE', description: 'blue / grey green foliage contrasts well with the bright red floral spikes produced in spring - early summer, blends well with exotics.', synonym: '', subspecies: '', location_name: '', general_info: 'naturally growing on sandy heathlands, along stream lines and coastal swamp margins. Tolerates wet soil and temporary inundation.', additional_info: 'The specific name of phoeniceus is Latin for \'from Phoenicia\', and refers to the country of origin, now Lebanon, of ancient crimson-purple dyes. The colour of which is seen on the bottlebrush flowers of this species.
The common name of \'bottlebrush\' or \'true bottlebrush\' also references the flower, highlighting the similar shape of the flower spikes to a kitchen implement (bottlebrush). The Aboriginal name of \'Toobada\' is likely to be the best common name for this species, being more suitable than \'Lesser bottlebrush\' , \'Fire bottlebrush\' and \'Western Bottlebrush\'. Each of which are confusing common names, respectively; this species is larger than its close relative C. speciosus, many species having red-flower spikes and the other western species C. speciosus may also be called this.

Naturally occuring on the western coast of Western Australia, from the Murchison River to east of Kalgoorlie and nearly to the the south coast. In the Perth metropolitan region it can be seen in the Helena Valley and in the Avon Valley (notably in the Avon Valley National Park).

Collected by James Drummond near Perth in 1839.', identification: 'Generally robust in its appearance, often with thick gnarled looking trunks (seemingly long-lived). Note that dwarf forms of this species are also known.
Leaves are blue / grey-green (ad- and abaxial surfaces), simple, alternate, entire, lanceolate (5-8cm long x 1-2cm wide), thick and coriaceous, with a distinct midrib (other viens being indistinct), apex acute with a sharp hard point. Leaves may be slightly twisted. Flower is a dense bottlebrush-like spike (8-14cm long x 5-7cm wide), fiery red or crimson in colour stamens with yellow anthers. Flowers are clustered and sessile, the calyx is deciduous and falls early, the 5 petals are short and orbicular. Flowering from October to December. Fruit is a squat, globular, woody capsule (5-7mm wide) with a sunken orifice, capsules are arranged in a cylindrical cluster. Seeds are linear in shape and tan-brown in colour.

Closely related to C. speciosus, the other Western Australian species which is found in Albany. C. speciosus has a smaller form reaching 1-2m, while C. phoeniceus grows much larger to 4m tall.', physical:'- Attractive, large, thick, lance-shaped, green foliage.
- Showing a profuse display of large, 8 - 14cm wide, red, bottlebrush spike flowers. Flowers during October - December.
used for cut flowers or floral art
- Small, 0.5 - 0.7cm wide fruit. Fruits are rounded woody capsule.
- Small, brown, fine, linear seeds.', horticulture: '- if damaged from floods, regrowth is from the base. Water absorber - helps to drain wet areas though this may be detrimental to other plants.
- low maintenance required. Usually frost resistant though young plants may need some kind of protection in their first winter.
- prune after flowering - Shrub forms require regular light annual pruning in the first few years - to help establish a dense bushy form. After this habit has been established pruning needs only be done every 3 to 4 years, to help maintain this shape. Not only does pruning help alter the shape and growth form it also stimulates flower production (encouraging extra flowering - within the season and twice-yearly flowering). To get the best floral displays prune the flowering head before it turns to seed (during the final days of flowering or immediately after flowering).
- cutting - short, leafy, semi-ripe tip cuttings taken in late summer and autumn. Note that cultivars must be propagated from cuttings to ensure the correct clonal features are maintained. Cuttings should be placed into a sand/peat mixture and kept in a cool, humid environment (with mist if possible). If difficulties arise in striking, a rooting hormone should be used.
- seed - propagate from seed in autumn or spring. Seed should be collected from the woody capsules near the base of the shrub, or closest to the trunk, to ensure seed is mature and viable. Capsules should be put into a paper bag and kept in a warm dry environment until the seed has been released. Seed should be sown in a friable medium and covered with fine peat and kept in a warm moist environment. Germination rates are generally high and therefore seeds should be sown thinly to avoid overcrowding.
- insect attack - scale insects may cause damage and need to be controlled with white oil.
slugs and snails - Tent caterpillar or web worm may be a problem in summer', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
hedge
ornamental plant
potted specimen
street tree
wetland plant
windbreak', culture: 'flowers can be sucked for nectar', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters 
insects 
attracting native bees and honeybees', architectural_info: 'Water absorber - helps to drain wet areas though this may be detrimental to other plants. Bonsai specimen. Native which blends well with exotics.', characteristics: 'erect or rounded, bushy, woody shrub >2m. With a dense canopy.', environment: 'full sun
partial shade   
may require summer watering.
Prefers well drained soils.
Frost Tolerant
Salt Tolerant', scientific_name: 'Callistemon phoeniceus')
CurrentPlant.create(name: 'Fire lily', common_name: 'Fire lily, Bush-lily', family: 'AMARYLLIDACEAE', description: 'showy tuft-forming perennial', synonym: '', subspecies: '', location_name: 'Student Admin Gardens', general_info: 'Prefers rich, fertile soil. Water well in spring / summer, less in winter', additional_info: '', identification: 'thick, glossy, dark green basal leaves are strap-like and semi-erect to 40-60cm long. Orange-red tubular flowers up to 8cm long (10-20 in a cluster) are carried on stems in autumn, winter or spring. Flower is paler in colour at the throat of the flower.', physical:'- Strap-like, dark green foliage.
- Showing a moderate display of large, 8cm wide, red, funnel-shaped flowers. Flowers during March - November [spring, autumn, winter].', horticulture: '- Plant in a sheltered position (especially if possibility of frost). Flowering well when pot bound. 
- low maintenance required. frost sensitive to a minimum of 10 degrees C. 
- division - divide rhizome post flowering or in spring
seed - Propagate from seed in winter or spring. Note specimens grown from seed are slow to flower. 
- insect attack - Water well in spring / summer, less in winter
- readily available. Yellow and cream flowering varieties are available. Hybrids are also very popular.', architectural_uses: '- potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tuft-forming, rhizomatous, Perennial herbaceous shrub < 1m.', environment: '- partial shade  
- may require summer watering.
- Prefers well drained soils.', scientific_name: 'Clivia nobilis')
CurrentPlant.create(name: 'Flame tree', common_name: 'Flame tree, Illawarra flame tree, Flame bottle tree', family: 'STERCULIACEAE', description: 'Often deciduous tree showing a spectacular display of vibrant red bell-shaped flowers in late spring and early summer. This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'St Georges College, Back of Human Resources, Southern side of Biochemistry,', general_info: '', additional_info: 'acerifolius is derived from the Latin acerifolium which means \'maple leaved\' and describes the maple-like foliage of this tree. The common name of \'Flame tree\' being thought to aptly describe the tree when in flower, its bright red flowers from a distance appearing like flames. The prefix of \'Illawarra\' is a geographical reference to its abundance on the Illawarra Range in Eastern Australia.
', identification: 'Magnificent tree with a smooth strong trunk Leaves are simple, alternate, up to 30cm long, showing variable in shape from the typical plamately lobed forms (with 3 - 5 - 7 lobes) to lanceolate-elliptic (no lobes). The main veins follow the lobes. Leaves look similar to maple leaves, coriaceous, glossy dark green on top and lighter green beneath turning pale brown in autumn if deciduous. Foliage is shed when the tree is in flower. Flowers are bright red, small - medium sized (apetalous, the showy calyx is 2-3cm long x 1.2cm wide), bell shaped, appearing in clusters (loosely hanging panicles) to 30cm long and 20cm wide. Flowering is highly erratic, flowering some years and not others. Often slow to initially flower. Dry winters appear to favour flowering. Fruit is a hard, boat shaped capsule (7-10cm long x 5-6cm wide) which contains many hairy yellow seeds. Seeds are enclosed in a brittle papery coat.', physical:'- Attractive, large lobed, dark green foliage.
- Showing a profuse display of medium, 3cm wide, red, clusters flowers. Flowers during November - February [summer].
used for cut flowers or floral art
- Large, 7 - 10cm wide, brown fruit. Fruits are hard boat-shaped capsule. Fruiting bodies are moderate in their abundance.
- Large, yellow, hairy seeds. Seed is profuse in its abundance.
- smooth grey or brown furrowed', horticulture: '- Is slow growing and may take some time to flower
- low maintenance required. Young plants are frost tender and require protection during the first 2 years. Water regularly when in bloom. Potted specimens require moderate watering (less in winter - to encourage flowering). Plant in deep soil. Post flowering mulch with well-rotted compost, apply slow release fertiliser. Tolerant of Phytophthora cinnamomi.
- minimal - pruning is rarely necessary, required only to restain wayward branches.
- seed - Fresh seeds germinate readily when sown in spring or autumn in a warm, humid environment. 
- insect attack - prone to attack from leaf tier insects.
slugs and snails - caterpillars can cause major defoliation in sub-tropical regions
- readily available. usually not as tall in cultivation.', architectural_uses: 'drain clogger
indoor plant
ornamental plant
potted specimen
street tree
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- butterflys - is the food source for the spectacular looking \'Tailed Emperor\' Polyura pyrrhus.
', architectural_info: 'This large tree can be seen to best advantage in a large garden or park. Often used as a companion plant with jacaranda as they flower at the same time, and create a spectacular floral display. This native tree blends well with exotics. Can be a good indoor potted specimen when young. Bonsai specimen.', characteristics: 'erect, pyramidal - conical, tree > 12m. With a dense canopy.', environment: '- full sun
- one drop
- Prefers well drained soils.
', scientific_name: 'Brachychiton acerifolius')
CurrentPlant.create(name: 'Flinders Range wattle', common_name: 'Flinders Range wattle, Willow-leafed wattle, Port Lincoln wattle', family: 'MIMOSACEAE', description: 'beautiful dense weeping shrub, with attractive blue-green foliage, perfumed yellow flowers (long flowering) and decorative silvery pods. A good native to blend with exotics.', synonym: '', subspecies: '', location_name: 'Sunken Garden, Agriculture - soil science courtyard, Botany - courtyard', general_info: 'will grow on most soil types', additional_info: 'iteaphylla is Greek for \'willow leafed\', describing the weeping soft foliage which resembles that of willows.
Being confined in its natural distribution to South Australia mainly around the Gulfs and Flinders and Gawler Ranges, within the 250mm annual rainfall zone.', identification: 'Commonly with a pendulous bushy habit, though a more upright form has also been recorded.
Long narrow lance-shaped phyllodes (8-10cm long x 5-8mm wide) droop down from the branchlets, finely tapering at the apex (tip is recurved) and base (into a smooth curved stalk). The midrib is distinct. New is mauve - pink tipped, phyllodes being predominantly bluish becoming grey-green. Flowers are butter yellow, ball shaped, fragrant, in short racemes of 6-10 heads (heads with 10-15 flowers). Enclosed buds have conspicuous pinkish bracts similar to A. suaveolens and A. subcaerulea . Fruit is a long, narrow (10cm long by 1cm wide), drooping, silvery-green pod drying to brown. Pod is flacate, with raised lighter margins, alternately rounded over, and slightly constricted between the seeds (8-10 seeds per pod). Pods are conspicuous, generally in large clusters. Seeds are dull black, oval 5-6mm x 3mm, longitudinal in the pod, seed stalk with short folds thickens into aril at the side of the seed.', physical:'- Attractive, long, narrow blue, green foliage.
- Showing yellow flowers. Flowers during March - August [autumn, winter].
- perfumed
- Large, 10cm wide, silver fruit. Fruits are drooping pod. Fruiting bodies are profuse in their abundance.
- 0.5 - 0.6cm wide, black, oval seeds.', horticulture: '- One of the most popularly grown Acacias in southern Australia
- low maintenance required. tolerates lime, requires minimal care and attention, usually frost resistant.
- prune after flowering - prune lightly to maintain its compact shape, hard pruning is not recommended\
- seed - seed must be scarified
- readily available. \'Parson\'s Cascade\' is a cultivar with pendulous branches forming a rounded mound of foliage to 50cm high and 3-4m broad. Often used as a ground cover or embankment plant.', architectural_uses: 'coastal plant - secondary
drain clogger
drought resistant
fence screener
freeway sites
hedge
ornamental plant
potted specimen
windbreak', culture: '', conservation: 'Conservation status of this plant is 3RCa - Its geographic range being greater than 100km - conservation category RARE; restricted distribution or sparsely spread over a wider area - occurring within a reserve - 1000 plants or more within the reserve', wildlife: '', architectural_info: 'excellent as decorative feature shrub or to provide a foliage contrast. A good native to blend with exotics. Great when planted in rows making it suitable as a fence screener, hedge or windbreak. Fire retarder (slow to burn).', characteristics: 'slender branched, weeping, woody shrub >2m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop
- Prefers well drained soils. 
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Acacia iteaphylla')
CurrentPlant.create(name: 'Flooded gum', common_name: 'Flooded gum, Blue gum, Moitch, Swamp gum', family: 'MYRTACEAE', description: 'A feature tree more for its grace and delicacy than grandeur. Flooded gum is a more convenient size than river gum. Very ecologically important tree, attracting a massive and diverse range of animals.', synonym: '', subspecies: 'rudis', location_name: 'Zoology', general_info: 'Commonly found lining rivers and streams and around lakes and swamps, dominating the upper reaches of the Swan River (on heavier loam or clay soils). Also found on more fertile soils such as those in the Darling Scarp, it occurs on higher ground. It prefers a moist situation and will grow under conditions with poor drainage.', additional_info: 'Collected by Baron von Huegel in 1833 at King George Sound. 
Latin rudis meaning \'rough, unused or raw\' and may apply to the basal rough bark or to its rough or poor timber, which is only suitable for fuel. 
\'Flooded gum\' is the best known common name and reflects the trees predominance in periodically flooded environments. \'Moitch\' an aboriginal name, avoids confusion with an eastern Australian eucalypt also called \'Flooded gum\'. \'Blue gum\' a name rarely used today refers to the blue-green foliage. Blue Gum Lake in Mt Pleasant is named after the flooded gums that used to grow there. 
Native range extending from Eneabba through to the western fringes of the wheatbelt to the Pallinup River, east of the Stirling Ranges.', identification: 'Flooded gum varies in its appearance from place to place, even within the metropolitan region. Around Perry Lakes it is a compact tree 15 - 20m high, along the Swan River at Guildford it is stouter and more like river gum E. camaldulensis. In the north of the district E. rudisvar. rudis intergrades with the smooth-barked E. camaldulensis var.obtusa, creating many different forms of flooded gum. North of Geraldton the species is definitely river gum. The buds and fruits of Flooded gum are difficult to distinguish from those of River red gum, but usually the rim of the fruit of Flooded gum is shorter and flatter than that of River red gum, the buds are larger with a bluntly conic operculum. 
Juvenile leaves are ovate to rounded, bluish, grey-green, the adult leaves becoming more linear-lanceolate. The inflorescence is made up of upto 7 buds, with pedicles up to 6mm, which form the umbel with a peduncle of 1.2cm long. The operculum of the bud (bud-cap) is distinctly conical 8 x 6mm. The stamens are yellow-white or creamy. The fruits are generally hemispherical to obconical in shape 5 x 8mm, often with a flared rim. The triangular valves project from the fruit. Seed colour ranges from black to red-brown. 
Note that the buds and fruit of specimens in isolated populations east of the Darling Range i.e. at Goddards Soak (Pingaring, south-central wheatbelt) are generally smaller than the coastal forms.', physical:'- Blue, green foliage.
- Showing white flowers. Flowers during May - November [spring, winter].
- Small, 0.5cm wide fruit. Fruits are shallowly hemispherical or inverted conical.
- Small, 1cm wide, irregularly cresent-shaped seeds.
- The bark gradates from brown rough bark lower down on the trunk to smooth grey to white bark on the upper branches (box-type bark). Height of the rough bark up the trunk is vary variable. With trees on the coastal plain having rough bark on the trunk and lower main branches with smooth bark covering the greater part of the tree. Trees on the Darling Range having a greater proportion of rough bark to smooth.', horticulture: '- low maintenance required. moderately frost resistant, though it is likely to be killed by servere or consistent frosts.
- seed - readily raised from seed which can be collected all year round, notably in late summer and early autumn. Fertile seeds are black, irregularly cresent-shaped 1mm long with a raised net-like pattern. Sterile seeds are red-brown, narrowly wedge-shaped up to 2mm long with a faint net-like pattern. There is an average of 620 viable seeds per gram of fertile and sterile seed. Seed should germinate in one to two weeks and grow rapidly. Establish from seedlings.
- insect attack - its foliage supports a myriad of leaf-miners, scale insects, aphids and bugs. If insects attack heavily in spring the foliage becomes brown. Other insects such as a large species of long-horned beetle bore into the wood.
- not readily available. rarely cultivated even though its close relative \'River red gum\' is one of the most cultivated eucalypts in Perth. It has been cultivated in other parts of the world, such as Algeria, California and San Franciso (as a roadside tree), though it has not been highly successful in drier areas.', architectural_uses: 'ornamental plant
shade tree', culture: 'The Aborigines used to eat the waxy, sugary scales on the leaves for flooded gum and the insect underneath. This food source was generally minimal in the past, however today in some agricultural districts the insect has multiplied greatly, increasing the food supply. 
Pollen produced by flooded gum is used by beekeepers to build up hives. While it may not be the \'favourite\' choice of tree for honey production, its light amber honey from it will be pleasant flavoured.', conservation: 'Closely related to E. camaldulensis var.camaldulensis (river red gum). 
', wildlife: 'Attracts:
- birds, honey-eaters 
- birds, insect-eaters - leaf minors which live off the foliage are eaten by pardalotes, thornbills, silvereyes and western gerygones.
- birds, nesting / perching - with respect to Bibra Lake, North Lake and Booragoon Lake, flooded gum is important to waterbirds. Old trees developing holes at the base of large branches which allow nesting of a range of ducks (black duck, grey teal, and maned duck). Forked branches are used by the darter and white-faced heron, to build nests using sticks. Dead branches being used for nesting and roosting by cormorants, egrets, herons, ibises, kingfishers, pardalotes, owls and parrots. Notably the pink cockatoo, previously missing from the perth environment, now nests in flooded gums.
- insects - The bark is used by a variety of insects including the jewel beetle Melobasis sesplagiata. Some species of wasp build nests in cracks in the bark. Web-spinning insects make silk tunnels on the bark and in crevices. Scorpions and crickets also shelter under the bark. Assassin bugs hunt other insects on the flowers. Leaf-miners are eaten by predatory insects suh as ladybirds, praying mantises and lacewings.
- mammals - hollows are used by bats and possums. Young foliage is highly palatable for koala\'s (eastern states)', architectural_info: 'A feature tree more for its grace and delicacy than grandeur. Note that the tree often has poor form.', characteristics: 'low and many branched, spreading, tree > 12m. With a open canopy and vigorous growth rate.
', environment: '- full sun
- Prefers clay soils.
- Frost Tolerant', scientific_name: 'Eucalyptus rudis')
CurrentPlant.create(name: 'Foxtail mulga grass', common_name: 'Foxtail mulga grass', family: 'Poaceae', description: 'Tufted perennial grass-like herb. Rhizomatous. Flowers green grey with white hairs.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Neurachne alopecuroides')
CurrentPlant.create(name: 'Freshwater paperbark', common_name: 'Freshwater paperbark, Swamp paperbark', family: 'MYRTACEAE', description: 'Good wetland plant, drier end of littoral zone.', synonym: '', subspecies: '', location_name: '', general_info: 'It is found naturally growing near watercourses and wetlands (at the drier end of the littoral zone). It is able to tolerate periods (several months) of inundation, prefering waterlogged sites. Growing near both fresh and saline water, being less adapted to saline water than M. cuticularis.', additional_info: 'Greek rhaphis meaning \'needle\' and phyllon meaning \'leaf\', referring to the shape of the leaves. 
Collected by J.A.L. Priess in 1839 near Perth on sandy plains. 
Being naturally distributed from Kalbarri along the coast to the Fitzgerald River National Park and inland to York.', identification: 'Being the most common paperbark that borders Perth\'s rivers and lakes (fresh and saline). Leaves are green to grey-ish green, spreading, alternate, needle-like (flattened to circular in cross section), 1-4cm long 0.5-1mm wide with a slightly hooked pointed tip (when terete). Flowers occur in dense clusters (spikes) 2-4cm long by 3-3.5cm across, at the ends of stems. The stamens are prominent and cream coloured. Often when flowering, new leaves are already forming at the end of the stem. Fruits are small woody, nearly spherical, capsules 5-6mm wide sparsely clustered along the branchlets', physical:'- Needle-like, green foliage.
- Showing a profuse display of small, 2 - 4cm wide, white, rounded to ovoid spike flowers. Flowers during September - February [spring, summer].
- Small, 0.5 - 0.6cm wide fruit. Fruits are spherical woody capsules.
- Greyish white papery bark, which peels off in strips., noted for its attrative trunk.', horticulture: '- low maintenance required 
- cutting - semi-ripe cuttings taken 3-5cm long, put into a fine sand/peat mix and placed into a humid environment.
- seed - seed can be collected year round and can be directly seeded in autumn and spring for optimum success (differing from most melaleucas who prefer to be established by seedlings. Note also that M. raphiophylla will establish well from seedlings). For planting around wetlands it has been suggested that seed be thrown into the water and let naturally settle on to the banks, as this places the seed at an ideal height for good germination.
- readily available. height is generally smaller in cultivation', architectural_uses: 'fence screener
wetland plant', culture: 'This species is valuable to beekeepers, especially when in association with E. rudis (flooded gum).', conservation: 'M. raphiophylla currently competes with an introduced species of bulrush, Typha orientalis, for its habitat along the rivers and permanent lakes in the Perth region. Summer fires often started in these environments, due to the flamable nature of the dry bulrushes, often badly damage paperbarks (killing seedlings and some mature specimens). These paperbarks are often inable to produce seed for about 5 years if relying on new vegetative growth. Such a long time period means that regeneration of stands may stop if burning is frequent. 
Its value as a rich biological specimen has been recognised and is now being utlised to improve the health of wetlands in the metropolitan region such as Herdsman lake. It is usually inundated in spring and very attractive to waterbirds for nesting purposes. Its sapling regeneration creating \'a thicket\' is also very popular as a protection against predation to many waterbirds. Thus it is generally more preferable to many birds than M. preissiana, which is often found in similar environments.', wildlife: 'Attracts:
- birds, honey-eaters - the western spinebill and brown honeyeater
- birds, insect-eaters 
- birds, nesting / perching - its splitting trunk often has hollows at the base and higher up which are used for nesting by Coots, dusky moorhens and various ducks. Horizontal forks in branches used by darters, cormorants, herons, egrets, ibises and spoonbills.
- insects - attracted during flowering', architectural_info: 'can be used as a screen or hedge plant if pruned correctly', characteristics: 'regular shaped, bushy crowned, tree 6 - 12m. With a dense canopy.', environment: 'full sun
partial shade
Prefers all types soils
Frost Tolerant', scientific_name: 'Melaleuca rhaphiophylla')
CurrentPlant.create(name: 'Gazania', common_name: 'Gazania', family: 'ASTERACEAE', description: 'POTENTIAL WEED - INVASIVE. Attractive carpet-forming perennial with bright daisy-like flowers in spring', synonym: '', subspecies: '', location_name: '', general_info: 'WARNING POTENTIAL WEED. This plant can invade bushland and coastal heathland. It has seeds that can be dispersed by wind. Avoid using this plant in any garden near bushland.', additional_info: '', identification: 'Leaves are entire, generally long and narrow, dark green above silver-grey woolly beneath. Flowers are large, brightly coloured and daisy-like. Flower colour includes orange, yellow, pink, and bronze. With conspicuous markings (bands or spots) at the base of the petals. Flowers are borne for a long period from early spring through to summer.
Note the flowers remain open in cloudy weather (most species the only open in full sunshine).', physical:'- Long, narrow, green foliage.
- Showing a profuse display of large, yellow, daisy-like flowers. Flowers during September - November [spring].', horticulture: '- Best grown as an annual in cooler regions 
- low maintenance required. Half hardy. Likes annual composting (or occasional feeding with slow release fertiliser prior to flowering).
- prune after flowering - Remove spent blooms and dead leaves.
- cutting - take shoot cuttings near the crown of the plant in spring or summer.
- division - Propagate by division in late winter to early spring
seed - Propagate by seed in late winter to early spring
- readily available. Many varieties available e.g. \'Daybreak\'', architectural_uses: '- bedding plant
- coastal plant - primary
- coastal plant - secondary
- cottage plant
- drought resistant
- groundcover
- groundcover suitable to dominate large expanses
- groundcovers for small areas between shrubs or driveway strips
- lawn alternative
- ornamental plant
- plants for paving and wall crevices
- potted specimen
- rockery plant
- tolerates harsh conditions', culture: '', conservation: 'POTENTIAL WEED. Invasive of natural bushland.', wildlife: '', architectural_info: '', characteristics: 'carpet forming, Perennial herbaceous shrub < 1m.', environment: '- full sun 
- One drop - may require summer watering.
- Prefers sand, well drained soils.
', scientific_name: 'Gazania sp.')
CurrentPlant.create(name: 'Geralton waxflower', common_name: 'Geralton waxflower, Wembly wax, Geralton wax
cv Purple Pride', family: 'MYRTACEAE', description: 'Large shrub 2 x 2 m. Attractive habit, profuse display of white, pink or purple flowers. Great cut flowers.
', synonym: '', subspecies: '', location_name: 'UWA Campus: Sunken Garden', general_info: 'growing naturally in sandy limestone soils', additional_info: 'The specific name of uncinatum is Latin for \'hooked\' and refers to the recurved apex of the leaf.
Extends along the coastal region from Perth northwards to Kalbarri.', identification: 'Of sparse growth in its native habit, becoming more bushy in cultivation.
Leaves are linear, needle-like to 4cm long, recurved at the aped (hooked at the end), opposite, nearly terete, surface is glandular (somewhat warty) and is strongly aromatic when crushed - emitting a citron-like perfume. Young leaves are light green becoming dark green with age. Upper stems are pale green near the terminals becoming yellowish then greyish with stringy bark. Red flowering forms have reddish upper stems. Flowers are large (2.5cm wide), 5-petalled, waxy coated, ranging in colour from white to deep purple, with a broad pink nectary at the centre, borne often in pairs (inflorescence a terminal leafy corymb) on 1cm long pedicels. Flowering in spring. Fruit is a small woody capsule holding 1 to many fine seed, ripening in summer.', physical:'- Narrow, needle-like, dark green foliage.
- Showing a profuse display of small, 2.5cm wide, pink, waxy flowers. Flowers during August - November [spring].
used for cut flowers or floral art
- Small fruit are displayed during December - February [summer]. Fruits are woody capsule.
- Small seeds are seen during December - February [summer].
- old bark is grey and stringy', horticulture: '- This plant is often considered hard to grow, but it is relatively easy if grown on the correct soil type - well drained sandy- gravelly soil which is slightly alkaline. If used as a bedding plant it is advisable to build up a garden bed by 20-30cm to allow for extra free drainage.
- low maintenance required. Moderately frost tolerant (species will survive in Canberra), moderately lime tolerant. Containerised specimens should be watered moderately, less when not in full growth. Water over dry periods, likes a north facing sheltered position.
- minimal - Pruning is required during establishment to thicken the bush, tip-pruning is best here. Mature plants require annual pruning in December or post flowering. Pruning should be just into the current years flowered shoots (old wood should not be pruned).
- cutting - Propagation is from mature hardened-off tip cuttings (with pale brown bark)(3-5cm long) taken from the crown in late summer. Strike singly into tubes with 3:1 sand/peat mixture. Keep cuttings in warm, humid environment till rooting. Note the roots are very brittle and may be easily damaged when transplanting. Grow is generally rapid. 
- don\'t over water
- fungal attack - most susceptible if drainage is poor
- insect attack - scale attack (treat with white oil)
- Phytophthora cinnamomi (dieback)
- readily available. White flowered forms and many other coloured (pink, purple to reddish) cultivars and dwarf forms are available. Note it is best to choose the plant when it is in flower, to be sure of the flower colour (due to the large range). Flower size also varies. Cultivated widely throughout Australia and overseas for the cut flower trade.
C. uncinatum \'Purple Pride\' - dark red / purple flowers.
C. uncinatum \'University Red\' - weeping foliage and dark purple to red flowers.
C. uncinatum \'Newmanii\'- reddish flowers, reddish stems.
C. uncinatum \'Album\' - white flowers.
C. uncinatum \'Bundara Supreme White\'- white flowers.
C. uncinatum \'Dowell\'- light purple flowers, petals are recurved.
C. uncinatum \'Bundara Excelsior\'- produces prolific masses of pale mauve flowers.
C. uncinatum \'Bundara Mystic Peal\'- pink-mauve fading to pale pink flowers.
C. uncinatum \'Munns\'- late flowering, erect habit, with pink flowers. Deeper pink in the centre and on the edges of the petals.
C. uncinatum \'Pink Pearl\'- rose pink flowers.', architectural_uses: 'coastal plant - secondary
fence screener
hedge
potted specimen
reduces erosion - soil binder', culture: 'The most common type of wax flower cultivated. Geralton wax is widely known as a floral symbol for Western Australia.', conservation: 'often associated with Tuart woodlands', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters', architectural_info: 'makes a good informal hedge.', characteristics: 'dainty, wiry stemmed, erect, woody shrub >2m. With a dense canopy and vigorous growth rate.
', environment: 'full sun   
one drop
Prefers sand, well drained soils, with a neutral to alkaline pH.
Frost Tolerant', scientific_name: 'Chamelaucium uncinatum')
CurrentPlant.create(name: 'Gingin Gem', common_name: 'Gingin Gem', family: 'PROTEACEAE', description: 'Suitable to use for bank retention.', synonym: 'thelmanniana', subspecies: 'obtusifolia', location_name: '', general_info: '', additional_info: 'Blunt-ended leaves', identification: 'Prostrate to decumbent; small leaves, red flowers.', physical:'- Attractive, dull, silky grey/green, green foliage.
- Showing a minimal display of small, 4-5mm longcm wide, red, conflorescence 0.5-1.5cm 8-10flowers flowers. Flowers during June - November [spring, winter].
- Small, 12-13mm x 5mmcm wide, brown fruit. Fruits are oblong. Fruiting bodies are inconspicuous in their abundance.
- Small, 7mm x 2mmcm wide seeds.', horticulture: '- Moderate maintenance required
- Readily available', architectural_uses: '- Groundcover suitable to dominate large expanses
- Groundcovers for areas where some height is required
- Reduces erosion (soil binder)
- Trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '- Prostrate to decumbent
- <5 metres
- woody shrub 1 - 2 m
- Dense canopy
', environment: '- Full sun
- Partial shade
- Tolerates full shade
- One drop (water during establishment)
- Prefers all types of well drained soils
- Wind Tolerant', scientific_name: 'Grevillea obtusifolia')
CurrentPlant.create(name: 'Green kangaroo paw', common_name: 'Green kangaroo paw', family: 'HAEMODORACEAE', description: 'Bright green flowers are eye catching and contrast well with red-pink coloured forms.', synonym: '', subspecies: '', location_name: '', general_info: 'Will tolerant winter-damp soils (tolerating moister conditions than any other kangaroo paw). Naturally found in low-lying sandy depressions which are waterlogged in winter. Requires water. Found growing on the coastal plain.', additional_info: 'Named by Stephan L. Endlicher, Professor of Botany and Director of the \'Botanical Gardens in Vienna\' in Germany in 1846. 
The name \'kangaroo paw\' (initally called \'kangaroo foot\') came into common use in the 1950s, and is used to describe many species of Anigozanthos and Macropidia fuliginosa. The prefix \'Green\' describing the flower colour associated with this species. 
Naturally occuring on the Swan Coastal Plain from Nambung National Park south to Scott River and Walpole.', identification: 'Grey-green leaves are terete (rounded in cross section) to 5 to 50cm long, 1-5mm wide. Flowers are a striking emerald green paw on a green woolly stem. Hairs on the stem may be red-brown. Floral spike (scape) usually to 40-50cm, as low as 10cm sometimes reaching 100cm, is unbranched (terminal inflorescence) and slightly curved near the flower head. The ovary and perianth are uniformly green, perianths are 5.5-7.5cm long with fully recurved lobes. 
Note that in the wild this species often produces 1- 5 floral stems in a flowering season, the common number for most species of kangaroo and catspaws. In cultivation this number is often increased greatly (10 fold), given favourable conditions. Commonly the inflorescence is many flowered, 5 - 15 flowers per inflorescence (producing between 10 to 100 flowers per season, note these are dramatically increased in cultivation). Flowering peaks in late winter and early spring. 
Three sub species exist. A. viridusssp. viridis (Common green kangaroo paw) being the tallest and most robust, flowering in September and October. A. viridusssp. terraspectans (Dwarf green kangaroo paw) a naturally endangered and rarely seen plant with floral spikes (scapes) 10-15cm, leaves 5-10cm long x 2mm wide. Confined to an area near Cataby, north of Perth, it is known to be a short-lived post-fire opportunist. Flowers opening away from the axis of the plant and are thrust outwards away from the scape. In cultivation it is admired for its compact habit and floriferous nature. Used in pots and rockeries. Flowering from August to October. A. viridusssp. \'metallica\' (Metallic green kangaroo paw) is found between Beermullah and Nambung National Park. Its floral spikes (scapes) are intermediate in height between Dwarf green kangaroo paw and Common green kangaroo paw, usually 15-30cm tall. It is similar to Dwarf green kangaroo paw in that its flowers open away from the axis of the plant. It can be separated from this sub species by its distinctive dark metallic green floral hairs and the fact that its flowers overhang the scape. Flowering August - September. 
This species of kangaroo paw can be distinguished from others by its grey-green leaves, which are almost round in cross-section (others being flat).', physical:'- Fine, terete, dark green foliage.
- Showing up to 50cm wide, green, floral spike, emerald flowers. Flowers during August - December [spring].
used for cut flowers or floral art', horticulture: '- low maintenance required. tolerates light frosts but needs protection against heavy frosts. 
- prune after flowering - cut floral spikes after initial flowering (low but not too low, leaving axillary buds) so that more floral spikes will re-shoot (extending the flowering time). 
- seed 
- fungal attack - susceptible to ink disease Dreschleria irisid, don’t over water
- readily available.', architectural_uses: '- ornamental plant
- potted specimen
- rockery plant', culture: '', conservation: 'A fire opportunist, appearing in great numbers after fires. The rhizome (tough, underground stem) common to most kangaroo paws, is buried 2-10cm below the soil surface allowing the plant to survive bushfires (sprouter). Also commonly seen occupying other disturbed areas (ie road verges).

Note that with regards to the inflorescence, only one or two flowers, open and function at any given moment (an evolutionarily advantageous trait to increase likelihood of successful pollination). Flowers opening from the bottom upward, with new flowers opening at night. Fresh flowers are thrust forward opening (usually) towards the scape (floral stem) on which pollinators (usually birds) sit. These flowers last for roughly 6 days then shrivel and rotate sideways, allowing the next flowers to open and face the stem. Pollinators are attracted to the brightly coloured flowers, being rewarded by often large quantities of sugar rich nectar (containing 5-20% sugar). As the animal (usually a bird) feasts on the nectar, pushing into the tubular perianth, it is dabbed by pollen coating the anthers. These sausage-shaped pollen grains remain viable for only a day, but will hopefully come into contact with the stigma of another flower and seed will be produced.

This species is highly successful in attractive pollinators (highly successful reproduction) being found to have 50-70% of flowers pollinated and setting seed.

This genus protects itself from predation by herbivors through the production of calcium oxalate crystal (sharp-needle like crystals). Clusters of these crystals (called raphides) are toxic to most animals', wildlife: 'Attracts:
- birds, honey-eaters (the nectar produced during flowering attracts many honey-eating birds; including the New Holland, singing, brown, white-cheeked and tawny-crowned honey-eaters, silvereyes, weebills and red wattlebirds. While most of these species are successful pollinators, the silvereye and weebill (with their short bills) are known to cause flower damage in pursuit of nectar. Parrots such as the red-capped and Port-Lincoln parrot also destroy flowers, ripping them off the scape and crushing them to get at the nectar.)
- insects (flowering attracts an array of insect feeders; thrips, ants, bees, hairy catterpillars, long-horned grasshoppers. The european honey bee (Apis mellifera) theives nectar from the flowers and appears not to play a role in pollination (due to the large physical separation of the nectar site and the anthers and stigma). Often capitalising on damaged flowers caused by the silvereye and weebill (birds). The long-horned grasshoppers (Katydids) not only enjoy the feast of the flowers but also use the inflorescence as a site for mating.)
- mammals (flowering attracts marsupials; the honey-possum and western pygmy possum (small animals) which scamper up the floral spikes to drink the sugar rich nectar. Kangaroos (western grey) are also known to graze on the flowers, and often cause damage to plants by knocking down the scapes.)', architectural_info: '', characteristics: 'small, reed-like, Perennial herbaceous shrub < 1m.', environment: '- full sun
- Two drop 
- Frost Tolerant', scientific_name: 'Anigozanthos viridus')
CurrentPlant.create(name: 'Grey cottonheads', common_name: 'Grey cottonheads, White conostylis', family: 'HAEMODORACEAE', description: 'attractive rockery plant, great for mass plantings along borders. Yellow woolly floral heads are borne in spring and summer, grey foliage creates an attractive contrast.', synonym: '', subspecies: '', location_name: 'Agriculture garden', general_info: 'naturally growing on sand, or sand over limestone', additional_info: 'Extending from Shark Bay to Scott River, near Augusta, along the coast of south-west Western Australia. Commonly found on the stable dunes on the Coastal plain, on Rottnest, Garden, Carnac and Penguin Islands.', identification: 'Grey strap-like, flat leaves are 10-40cm long, varying in width (often 5mm). Leaves are covered with grey hairs and feel like felt. A bract is generally halfway up the flowering stalk. Tubular yellow flowers (0.9-1.3cm long) are woolly and arranged in globular heads on stout stems to 40cm (yellow on the outside, golden on the inside). Note the flower stems are erect and flowers are borne above the foliage. Flowering in spring and summer.
This species is variable, with several subspecies existing.

This plant belongs to a group of plants called stilt plants which have an aerial root system which is supported by adventitious prop roots.', physical:'- Attractive, strap-like, silver foliage.
- Showing a moderate display of medium, yellow, rounded floral head flowers. Flowers during September - February [spring, summer].
used for cut flowers or floral art', horticulture: '- low maintenance required. moderately frost tolerant, moderately lime tolerant
- division - Divide tuft in winter, placing the divisions into pots to re-establish before planting out.
- seed - Sow mature seed in autumn 
- fungal attack - Susceptible to ink disease (make sure well aerated and well draining soil).', architectural_uses: '- potted specimen
- rockery plan', culture: '', conservation: '', wildlife: 'Attracts:
- birds, honey-eaters 
- birds, insect-eaters', architectural_info: 'Striking when grown in masses. Tufting - with erect to arching foliage, which creates a \'bush\' effect. Contrasting well with groundcovers and shrubs. Often grown along path edges, next to lawns etc', characteristics: 'tufted, Perennial herbaceous shrub < 1m.', environment: '- full sun
- Prefers well drained soils
- Frost Tolerant', scientific_name: 'Conostylis candicans')
CurrentPlant.create(name: 'Grey honey-myrtle', common_name: 'Grey honey-myrtle, Grey-leafed honey-myrtle
', family: 'MYRTACEAE', description: 'extremely showy plant with its soft weeping silver grey-green foliage and pretty flowers', synonym: 'M. polygaloides', subspecies: 'incana', location_name: '', general_info: 'naturally found living in wet swampy areas, tolerating temporary inundation and periods of dryness. Will tolerate wet cold clay soils which dry out in summer but are not permanently boggy. Very hardy in most soils and aspects.', additional_info: 'Melaleuca incana- Latin for \'hoary\' or \'greyish\' referring to the colour of the foliage Found from Jurien Bay to Albany, Western Australia', identification: 'Readily distinguished by is soft grey-green weeping foliage. Leaves and branchlets are softly pubescent (white hairs). Leaves, crowded, simple, linear-lanceolate 5-15mm long by 2-3mm broad, acute, curved (forwards), irregularly opposite or in whorls of 3. Red petiole, margin entire by ciliate, indistinct venation apart from the mid-rib. Juvenile leaves reddish-green becoming grey-green with a red edge becoming greyish-purple in winter. Flowers pastel yellow to white, in dense ovoid to oblong spikes usually 2-3cm long by 2cm diameter. Floral spikes are terminal on short lateral branchlets, new shoots appearing at the apex as the flowers fade in colour. Fruits are small woody capsules which are grouped tightly into a cylindrical spike 3cm long. 
A cultivated form is often confused with M. polygaldoides.', physical:'- Attractive, soft, grey-green, silver foliage.
- Showing 2-3cm wide, yellow, ovoid to oblong (spikes) flowers. Flowers during August - December [spring].
used for cut flowers or floral art
- Small, 3cm wide, brown fruit. Fruits are woody, capsule. Fruiting bodies are inconspicuous in their abundance.
- rough dark grey. Young twigs are straw coloured and covered densely with white hairs.', horticulture: '- low maintenance required. moderately lime tolerant, minimal care and attention required. Moderately frost resistant when mature.
- seed - seed has been collected in Jan - Feb.
- fungal attack - black smut
- insect attack - susceptible to scale attack
- readily available. commonly cultivated, with a dwarf cultivar \'Velvet Cushion\' and \'Nana\' a compact form with a mass of tighlty-clustered leaves. A white-flowering form with sickly smelling flowers is also in cultivation.', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
freeway sites
ornamental plant
potted specimen
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, insect-eaters', architectural_info: 'graceful woolly shrub with a beautiful weeping appearance. Foliage tints change with season, usually grey, pale green in spring/autumn', characteristics: 'pendulous, spreading, woody shrub >2m.
', environment: 'full sun
partial shade   
two drop
Prefers all types soils, with a neutral to alkaline pH.
Frost Tolerant', scientific_name: 'Melaleuca incana')
CurrentPlant.create(name: 'Guinea gold vine', common_name: 'Guinea gold vine, Climbing Guinea flower', family: 'DILLENIACEAE', description: 'showy yellow buttercup-like flowers produced over a long period. Native that blends well with exotics.', synonym: 'Hibbertia volubilis', subspecies: '', location_name: 'Sunken Garden', general_info: '', additional_info: '', identification: 'Fleshy stems. Leaves are shrubby, broad (oblanceolate to elliptical), dark green (to 8cm long), simple, alternate. Large bright yellow saucer-shaped flowers (5-6cm wide) are very showy and displayed mostly during spring and summer, sometimes year round. Flowers are rotate, with 5 broad and spreading petals (buttercup-like) with a cluster of yellow stamens in the centre. Flowers are short lived. Fruits are red. Seed is borne in a rounded follicle. Seed reddish brown, shiny, kidney-shaped to globular.', physical:'- Broad, dark green foliage.
- Showing a moderate display of large, 5 - 6cm wide, yellow, saucer-shaped flowers. Flowers during September - May [spring, summer, autumn].
- Medium, red fruit. Fruiting bodies are moderate in their abundance.', horticulture: '- Its very vigorous habit means that it may quickly climb up and over small trees and shrubs - best planted at a distance and watched closely.
- Low maintenance required. Requires minimal care and attention. Moderately lime tolerant. Usually frost resistant. Add peat or mulch (leaf-mould) to the soil to improve its fertility. Water freely in summer, less at other times. Provide stems with support / trellis if wish to cover a wall. 
- Regular pruning - cut back wayward shoots to maintain form
- Cutting - Propagate from soft-tip / half-ripened tip cuttings in spring. Strike into a sand/peat mix and keep in a warm and humid environment.
- Seed - Less favourable is seed propagation, where upon many species take up to 10 weeks to germinate.
- Readily available.', architectural_uses: '- Basket plant
- Coastal plant - primary
- Fence screener
- Groundcover
- Groundcover suitable to dominate large expanses
- Potted specimen
- Reduces erosion - soil binder
- Trailing plant for walls', culture: '', conservation: '', wildlife: 'Attracts:
- Birds
- Insect-eaters', architectural_info: '- This native blend well with exotics.
- This creeper may be trained over a support to form a shapely bush (container plants requiring a wire support).
- Makes an attractive groundcover, covering large areas including waterfronts and banks.', characteristics: '- Soft twining
- Perennial climber 1 - 6m, with a vigorous growth rate.', environment: '- Full sun
- Partial shade
 - Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Hibbertia scandens')
CurrentPlant.create(name: 'Gungurru', common_name: 'Gungurru, Gungunnu', family: 'MYRTACEAE', description: 'quick growing, long flowering, small, beautiful ornamental eucalypt, surviving in dry areas.', synonym: 'magna', subspecies: '', location_name: 'taxonomic garden, \'silver princess\'', general_info: 'Found growing on sandy or granitic soils in the 250-400mm rainfall zones. One of the few Eucalypts which (in nature) confines itself to the vicinity of granite outcrops. Being recorded at localities such as Uberin Hill near Dowerin, Mount Caroline south from Kellerberrin, the rocks of Warren Double Cunyan northwards from Westonia (showing beautiful examples of the species - the small broad-leaved mallee form) and in the vicinity of the Fraser Range. This restriction to a soil type does not prevent it from being cultivated in many soil types, as it is known to thrive in many of the sands of the Perth metropolitan region and on the sandy loams of the interior. It will also grow in some clayey soils.', additional_info: 'Latin \'caesia\' meaning \'blue of the eyes\', referring to the bluish-grey or pale-grey, whitish bloom on the upper shoots and inflorescence. 
The common name \'Gungurru\' is apparently the name used by Aborigines of the Fraser Range district. This common name is not widely used, with preference given to its botanical name. 
First collected by James Drummond when he made his Fifth Collection, a trip which covered Toodyay through Tammin, Karlgarin and Mount Short to Ravensthorp and Middle Mount Barren in 1849.', identification: 'Gungurru is generally a shrub or mallee and rarely a small tree. Leaves are alternate, spreading or drooping, ovate-lanceolate to lanceolate-falcate 10-12cm long, 2-3cm wide; petiole 3cm long, crimson. Grey-blue on both sides with a prominent red mid-rib, lateral nerves not numerous and diverging from the midrib at a moderately wide angle, the intramarginal nerve remote from the leaf-margin and oil glands are few and scattered. Young shoots are crimson and shiny. Buds are powdery-grey. Flowers in drooping axillary umbels of 2 or 3. Flowers on 2cm long reddish peduncle, buds large, crimson to rose-pink. Stamens numerous to 1cm long, filaments rosy-red to light pink with golden yellow anthers, fully developed flower reaching 5cm wide. Inflorescence covered with a whitish-glaucous bloom. Fruit capsule urceolate to campanulate (urn-shaped) to 2.5cm by 1.5cm, finely ribbed with the mouth gaping and the valves sunken below the rim, whitish at first becoming brown when mature. The seeds are hemispherical-ovoid. 
E. caesia has no close relatives, belonging to the orbifolia group which is recognised for its minniritchi bark. All eucalypts belonging to this group are endemic to Western Australia, except one. The fruits of Gungurru being shaped similar to those of Marri but the flowers and foligae are entirely unique. 
Has a general resemblance to E. sepulcralis (weeping mallee) a small tree in the Ravensthorpe district, however this resemblance is confined only to the shape of the fruit. Weeping mallee having smooth bark, green to dark green leaves and pale yellow flowers.', physical:'- Attractive, slender, blue, green foliage.
- Showing a moderate display of medium, 5cm wide, pink, loose drooping clusters, bell shaped flowers. Flowers during June - October [winter].
used for cut flowers or floral art
- Small, 2.5cm wide, brown fruit. Fruits are capsule finely ribbed.
- The main trunk has an attractive reddish-cinnamon coloured bark (longitudinally crisped) which curls to reveal an under bark of smooth pale-green (this type of bark is commonly known as minniritchi bark). The pendulous branches are a powdery white or blue-white. The timber is pale brown.', horticulture: '- It will coppice in its native habitat (multiple stems producing a shrubby habit) but when grown on better soils will develop a more tree-like growth. Flowers often produced within 2-3 years. E. caesia does not like excessive humidity or wind and will tolerate only light shading. Moderately frost and lime tolerant. It can be used in cultivation where E. ficifolia is not suited, for it can grow in a minimum rainfall of 12inches annually.
- Low maintenance required. although it survives drought conditions it appreciates watering during dry periods. In cultivation it is often thin and weak, being susceptible to strong winds, and requires staking when young.
 - Minimal - May require pruning if branches become too long and pendulous. Mallee which can be made to have multiple stems, creating more shrubby appearance, by pruning of main shoot (coppicing).
- Seed - seed can be collected year round, establishment best from seedlings.
- Phytophthora cinnamomi (dieback) 
- readily available. Gungurru has been cultivated in most parts of Australia and in California. With a naturally occurring robust form with leaves upto 23cm long and 4.5cm wide. The cultivar known as \'silver princess\' (ssp. magna) is very popular, growing to 10m tall. It has pendulous branches and larger leaves (adult 24x5cm), fruits (to 3.7 x 4cm) and flowers. The flowers are deep pinky-red. This cultivar occurs naturally in the WA Goldfields.', architectural_uses: 'drain clogger
freeway sites
ornamental plant
potted specimen
street tree', culture: '', conservation: 'The Aborigines of the Fraser Range district ate the roots', wildlife: 'Attracts:
- birds, honey-eaters 
- birds, insect-eaters', architectural_info: 'Very attractive small weeping eucalypt, ideal for drier areas. Particularly attractive in that it combines attractive bark with white branches, blue-green leaves with pink blossoms and handsome fruit. This native blends well with exotics. Smog tolerant.', characteristics: 'graceful, slender, weeping, tree < 6m. With a open canopy and vigorous growth rate.', environment: '- full sun  
- one drop
- Prefers all types, well drained soils.
- Frost Tolerant', scientific_name: 'Eucalyptus caesia')
CurrentPlant.create(name: 'Gymea Lily', common_name: 'Gymea Lily', family: 'IRIDACEAE', description: 'Large rosette of 1-2 m long sword-like leaves. Provides foliage contrast. Good under-canopy plant in Perth. Flowers rarely - after ca. seven years. Stunning large globular head of large lily-like red flowers borne on a 4 m tall stiff stem, flowers opening over several weeks.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'excelsa - stunning large globular head of large lily-like red flowers opening over several weeks.', identification: 'Rosette of 1-2 m long sword-like leaves. Flowers after ca. seven years. Stunning large globular head of large lily-like red flowers borne on a 4 m tall stiff stem, flowers opening over several weeks.', physical:'- Attractive, Long sword-like 1-2 m, light green foliage.
- Showing a moderate display of large, Stem 400 cm tall, infl 40 cm acrosscm wide, red, Large globular flower head on stiff stem flowers. Flowers during September - February [spring, summer].
used for cut flowers or floral art', horticulture: '- low maintenance required.
- not readily available.', architectural_uses: '- ornamental plant
', culture: '', conservation: '', wildlife: '', architectural_info: 'Large rosette of 1-2 m long sword-like leaves. Provides foliage contrast. Good under-canopy plant in Perth. Flowers rarely - after ca. seven years. Stunning large globular head of large lily-like red flowers borne on a 4 m tall stiff stem, flowers opening over several weeks.', characteristics: 'Rosette of large sword-like leaves 1-2m. Height 4m, Leaves 1-2 m. Spread 1.5m, Perennial herbaceous shrub >2m. With a dense canopy.', environment: '- artial shade  
- two drop
- Prefers loam soils, with a neutral to acidic pH.
', scientific_name: 'Doryanthes excelsa(inc)')
CurrentPlant.create(name: 'Heart-leaved flame pea', common_name: 'Heart-leaved flame pea, Heart-leafed flame pea, Flame pea', family: 'FABACEAE', description: 'spectacular sprays of bright orange-red pea flowers produced in spring. This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'Agriculture garden', general_info: 'Suited to most soils as long as they are well draining. Best in a sandy loam. Likes regular watering (water in dry winters). Tolerates heavy shade.', additional_info: 'The specific name of cordatum is derived from the Latin cordata meaning \'heart-shaped\' and refers to the heart-shaped leaf base. Commonly referred to as \'Flame peas\' due to the brilliant colours of the flowers.
Occurring naturally around the Swan River District', identification: 'Leaves are glabrous, alternate, ovate with base heart-shaped (cordate), 3-5cm long x 1.5-2.5cm wide, petiole 2-3mm long, margins are spinulose - dentate and undulate (spiny and wavy). Midrib is depressed above and prominent beneath. Green above, paler beneath. Branches are thin and twiggy. Pea-shaped flowers are bright orange to red, inflorescence is a cluster of terminal or subordinate axillary racemes (spray) to 12-15cm long, carrying 12-15 widely spaced flowers. Standard is bright orange-red veined crimson with a yellow patch at the base, wings deep crimson, keel is folded pale green with a deep purple tip. Fruit is a small legume pod which splits into 2 boat-shaped halves, remaining with the dried calyx after the seed has been dispersed.
Many forms in cultivation may be difficult to identify, being hybrids of C. cordatum with either C. varium , or C. ilicifolium.', physical:'- Spiny, heart-shaped, light green foliage.
- Showing a profuse display of small, 2cm wide, red, pea-shaped flowers. Flowers during August - November [spring].
used for cut flowers or floral art
- Small fruit. Fruits are pod.', horticulture: '- This semi-prostrate shrub can be grown to trail over walls or hanging baskets. 
- low maintenance required. Colours are best when planted in semi-shade. Moderately frost resistant, moderately lime tolerant. Best when grown with compost and a good mulch. Potted specimens need moderate watering, less when not in full growth. This semi-prostrate shrub can be grown to trail over walls or hanging baskets.
- prune after flowering - Pruning required to make a neat compact bushy shape, if let go it will become a semi-prostrate scrambling shrub. Prune after flowering and pinch back occassionally.
- cutting - Firm tip cuttings should be taken in late summer to mid-winter. Placed into a sand/peat mixture and kept in a humid glasshouse with mist irrigation. Propagation success is generally low.
seed - Seed requires soak in warm water fro 24 hours prior to sowing (to soften the hard seed coat). Sow into a friable media and keep in a warm environment. Propagation success is generally low.
- insect attack - may be susceptible to sap-sucking insects, control with garlic spray.
- slugs and snails - May be susceptible to attack from caterpillars.
- readily available. many colour forms are available', architectural_uses: '- basket plant
- coastal plant - secondary
- groundcover suitable with some trees or shrubs
- groundcovers for areas where some height is required
- ornamental plant
- potted specimen
- rockery plant
- trailing plant for walls', culture: '', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters', architectural_info: 'This native blends well with exotics.', characteristics: 'low, twiggy, spreading or scrambling, Perennial herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- Prefers well drained soils.
- Frost tolerant', scientific_name: 'Chorizema cordatum')
CurrentPlant.create(name: 'Hill\'s Weeping Fig', common_name: 'Hill\'s Weeping Fig, Fig', family: 'MORACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Not frost hardy', additional_info: 'Hill\'s weeping Fig.', identification: 'Leaves are glossy dark green above and matt underneath, oval and pointed. 5-7 cm long. Fruit is pea sized, green and goes salmon-pink with greeninsh warts appearing in autumn.', physical:'- Attractive, oval and pointed, 5-7 cm, dark green foliage.
- Small, <1cmcm wide, pink fruit are displayed during March - May [autumn]. Fruits are has greeninsh warts in autumn. Fruiting bodies are inconspicuous in their abundance.
fruit messy
- noted for its attrative trunk.', horticulture: '', architectural_uses: 'shade tree
', culture: '', conservation: '', wildlife: '', architectural_info: 'Large tree suitable for parkland or other large open areas.', characteristics: 'large tree 15-20 m, 12-15 m, tree > 12m. With a dense canopy, vigorous growth rate and extensive root system.', environment: '- full sun
 - Prefers all types soils, with a neutral to acidic pH.', scientific_name: 'Ficus microcarpa var. hillii (incomplete)')
CurrentPlant.create(name: 'Holly-leaf banksia', common_name: 'Holly-leaf banksia, Holly-leaved banksia', family: 'PROTEACEAE', description: 'Long flowering (flowering being minimal to moderate), prickly foliage', synonym: '', subspecies: '', location_name: 'bassendean sand, south of Perth', general_info: 'Found growing on deep white or grey sand on consolidated dunes and low-lying flats, in woodland; near the south coast sometimes in tall shrubland. In the metropolitan region is seems to be confined to the coastal plain.', additional_info: 'Latin ilex (holly) and folium (a leaf), in reference to the apperance of the leaves to those of holly. Type collection by Robert Brown in 1801 or 1802 at King George Sound, Western Australia. 
Found in Western Australia, within 70km of the coast from Mt Lesueur to Cape Leeuwin and east to Albany and the Stirling Ranges. Note specimens from the south-coast are spreading, usually with larger leaves, flowers and fruit than the northern plants', identification: 'Flower-spikes unlike any other of the Perth Banksias, prominently dome shaped rather than tall and cylindrical. Flowers changing colour from young green buds through creamy-yellow at opeing to pink, becoming dull red with age. Inflorescence is terminal 7-9cm wide at flowering. Note that while flowering is year round, greatest abundance is between late winter and early summer. Leaves are scattered, obovate-elliptic, 3-10cm acutely serrate, sometimes entire. New growth is pale greenish-brown (produced in summer), later becoming deep green and often shining. 
Not to be confused with parrotbush D. sessilis by its different habitat, larger size, less prickly leaves, colour of the flowers and the woody base to its fruits', physical:'- Attractive, irritating, roughly elliptic, toothed, dark green foliage.
- Showing a minimal display of medium, 7-9cm wide, pink, dome-shaped flowers. Flowers all year round.
used for cut flowers or floral art
- Large, 7-9cm wide fruit. Fruiting bodies are minimal in their abundance.
- Medium, 1-2cm wide, transversely elliptic, winged seeds are seen all year round. Seed is inconspicuous in its abundance.
- Grey in colour. Thick, fibrous, fissured or tessellated.', horticulture: '- When grown in cultivation its habit depends on provenance. Erect or spreading and often pine-like when young, becoming of irregular form when mature. B. ilicifolia is slow growing and probably takes up to 10 years to flower from seed.
- low maintenance required. 
- minimal - may be heavily pruned though
- seed - establishment best from seedlings, no information available on strike rates or time taken to field ready. Seed collected year round, developing in less than three months from flowering.
- insect attack - the larva of the moth burrows into the woody axis of the flower head, while a different moth larva burrows into the stems.
- not readily available. rarely cultivated', architectural_uses: 'coastal plant - secondary
potted specimen
shade tree
windbreak', culture: '', conservation: 'B. ilicifolia is a primitive banksia, one of 3 Western Australian species that provide a link between the related genera Banksia and Dryandra. 
B. cuneata is a related species with smaller leaves and flowers and smooth bark. 
The progressive colour changes of the flower-spike are likely to enhance pollination via; a) The older pink and red flowers providing a visual attraction to the main pollinators (honey-eating birds), while it is the yellow-cream flowers which contain the major supply of nectar and pollen for the birds and insects to feed upon. b) It has also been postulated that colour changes relating to pollination lets animals know which flowers to visit in order to feed without wasting time. It is important for B. ilicifolia to be an efficient pollinator as it has much competition with other associated Perth banksias which flower over shorter periods with intense floral displays. In addition its flower-clusters are relatively small and are scattered or in low abundance. 
Seed is generally intact due to its quick maturation (see propagation) and is therefore less likely to be attacked by insects. 
B. ilicifolia is fire tolerant, sprouting by epicormic shoots.', wildlife: 'Attracts:
- birds, honey-eaters - flowers attracting the western spinebill, the red and little wattlebirds and the brownand New Holland honeyeaters
- insects - nectar produced during flowering attracting native bees, ants and beetles. Holly-leaved banksia being one of the most important sources of food for the twig-mound ant, due to its year round flowering. The ants commonly building their distinctive nests near the base of the tree, moving from tree to tree as supply of nectar fluctuates.', architectural_info: 'Not recommended for planting by lawns or paths as its fallen leaves are prickly. Note B. ilicifolia is a second line coastal plant, requiring some protection from winds and sea spray.', characteristics: 'erect, upward branching, tree 6 - 12m. With a open canopy.', environment: 'full sun   
one drop
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Banksia ilicifolia')
CurrentPlant.create(name: 'Honey locust', common_name: 'Honey locust, \'Sunburst\'', family: 'CAESALPINIACEAE', description: 'popular foliage and shade tree, large seed pods produced in summer through to winter. Spineless cultivars available', synonym: '', subspecies: '', location_name: 'Hackett Hall', general_info: '', additional_info: 'Specific name of tricanthos is derived from the Greek and means \'three horned\'. Commonly known as Honey locust, due to the sweet pulp found within the seed pods. Native to eastern and southern USA and northern America.', identification: 'Leaves are fern-like, shiny, compound, alternate, pinnate (composed of 32 leaflets) or bipinnate (the main rachis is 15-20cm long, the 8-12 pinnae are 8-10cm long each with 20-30 lanceolate leaflets 2.5-3cm long 5-8mm wide, opposite or alternate). Young foliage is golden yellow turning dark green in summer (paler beneath), becoming yellow in autumn and falling from the tree. Flowers are greeny-white, insignificant, pea-like, produced in downy clusters (slender axillary racemes to 8cm long), borne on the upper twigs in October-November. Followed by large (up to 45cm long x 3-4 cm wide, 1cm thick) shiny, red-brown, flat but slightly curved leguminous seed pods (more prolific post a hot summer). Pods are filled with sweet pulp, containing from 15 - 25 seeds. Dark green-olive seeds are slenderly ellipsoidal (1cm long x 6mm wide, 2mm thick), testa is pitted.
Trunk and branches are very thorny (woody spines are long, sharp, often 3-pronged). Upper stems are angular, brown-green with conspicuous lenticels.', physical:'- Attractive, fern-like, shiny, dark green foliage.
- Showing a inconspicuous display of green, pea-like flowers. Flowers during October, November.
- Large, 45cm wide, brown fruit are displayed during December - May [summer, autumn]. Fruits are slightly curved seed pods. Fruiting bodies are profuse in their abundance.
- Medium, 1cm wide, green, ellipsoidal seeds are seen during May, June.
- very thorny trunk and branches (except cv \'Sunburst\' which is thornless)', horticulture: '- Spineless cultivars available
- low maintenance required. Frost hardy to -10 degrees C (young plants more susceptible to frost damage).
- minimal - Pruning is minimal, generally only required when young to remove wayward laterals or competing leaders to establish a single straight trunk. Spines on the lower trunk should also be removed.
- cutting - Varieties or cultivars should be propagated via shield budding (to maintain their clonal character) on the understocks of the parent, in spring or summer.
- seed - Ripe seed which is collected in autumn. Sow seed directly after it has been pre-treated (soaked in warm water for 24 hours, to soften the seed coat - or held over winter in lightly moist sphagnum moss at 4-5 degrees C and sown in spring).
 - readily available. cultivars and varieties available include: \'Sunburst\' - this cultivar is popular due to its spine-less nature, mature leaves are pale green instead of dark green. Reaching a height of 15m, spread to 8m. \'Rubylace\' - has reddish yound growth which becomes bronze coloured in autumn. \'Moraine\'- nearly spineless, upright vase-shaped form.
- var. inermis - another nearly spineless form', architectural_uses: 'drought resistant
shade tree', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'vase-shaped, spreading, tree > 12m. With a open canopy.', environment: '- full sun
- one drop - may require summer watering.
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Gleditsia tricanthos')
CurrentPlant.create(name: 'Hooker\'s banksia', common_name: 'Hooker\'s banksia', family: 'PROTEACEAE', description: 'Attractive banksia with many terminal conspicuous flowering cones. Flowers are brigt orange with pale pink hairs. Cones are pale pink and hairy and open orange from the bottom up. Long flowering period.', synonym: '', subspecies: '', location_name: '', general_info: 'Frost sensitive.', additional_info: 'Named after William Jackson and his son Joseph Dalton Hooker. These men were directors of the Royal Botanic Gardens, Kew, UK.', identification: 'Shrub to 3m. Smooth bark. Hairy branchlets. Serrated leaves 6- 16 cm. Bright orange flowers with pale pink hairs.', physical:'- Attractive, serrated 6-16 cm long, green foliage.
- Showing a profuse display of large, 7-12 cm x 9-10 cm widecm wide, orange, terminal cylindrical cones flowers. Flowers during April - October [winter].
used for cut flowers or floral art
- Small, 2 cm long x 5-7cm high x 1 cmwidecm wide, gray fruit. Fruits are folicle. Fruiting bodies are inconspicuous in their abundance.', horticulture: '- Most attractive banksia with many terminal conspicuous flowering cones. Flowers are brigt orange with pale pink hairs. Cones are pale pink and hairy and open orange from the bottom up. Long flowering period.
- low maintenance required. Usually good form without pruning. May prune lightly but not below the gren foliage. Frost sensitive.
- minimal - Usually good form without pruning. May prune lightly but not below the gren foliage. Frost sensitive.
- readily available. Flowers in 3-4 years from seed. Killed by fire. Cones open with fire. Regenerates from seed.', architectural_uses: 'freeway sites
ornamental plant', culture: '', conservation: 'Bird pollinated. Long flowering period. Flowers in 3-4 years from seed. Killed by fire. Cones open with fire. Regenerates from seed.
', wildlife: '', architectural_info: 'Attractive banksia with many terminal conspicuous flowering cones. Flowers are brigt orange with pale pink hairs. Cones are pale pink and hairy and open orange from the bottom up. Long flowering period. Attractive serrated leaves.', characteristics: 'Bushy shrub, 3 m, woody shrub >2m. With a dense canopy and vigorous growth rate.
', environment: 'full sun', scientific_name: 'Banksia hookeriana')
CurrentPlant.create(name: 'Horsetail she-oak', common_name: 'Horsetail she-oak, Coastal she-oak, Shingle oak, Beach oak', family: 'CASUARINACEAE', description: 'beautiful silver grey weeping foliage on pendulous branches.', synonym: 'Casuarina equisetifolia', subspecies: 'incana', location_name: 'Engineering car park', general_info: 'Commonly found growing in coastal regions. Able to tolerate temporary inundation for up to a week after rain, this plant helps to drain wet areas. Once established will grow well in ordinary shade without artificial watering.', additional_info: 'Equisetifolia is Latin for \'with foliage like Equisetum\', the Horsetails. Incana is Latin for \'whitish grey\'.
Its common name of \'She-oak\' was coined by early English settlers to whom the wood resembled that of their native oaks, the \'she\' prefix has caused some confusion and may either be a reference to a) the inferior oak-like wood or b) relate to the graceful nature of the tree. Horsetail refering to the weeping needle-like foliage which is thought to resemble a horses tail, Coastal and Beach refers to its preference for sea-side habitats.
Naturally found extending from New South Wales, up through Queensland, to the Northern Territory and South-East Asia. Generally inhabiting the coastal regions.', identification: 'Abundant foliage is born on slender, weeping branchlets. Casuarina having scale leaves in whorls of 12-15. Leaves are small triangular decurrent scales. Scale leaves are silvery green, the tips of which are pale green to reddish-brown. The male tree has its staminate flowers in slender spikes to 2cm at the ends of the 1 year old branchlets. The female tree has its pistillate flowers in short reddish heads in the axils of the upper twigs. Flowering can prolong to early summer in some situations.', physical:'- Attractive, weeping, silver foliage
 - Showing flowers. Flowers during June - October [winter]
- Small, brown, ovoid, papery winged seeds', horticulture: '- These plants fix their own nitrogen and can therefore be grown successfully in nutrient deficient soils.
- Low maintenance required. moderately frost tolerant - grows well tolerating temperatures to 0 degrees C, colder regions causing growth to be poor and thin. Very lime tolerant.
- Minimal: Pruning is seldom required, with the natural habit generally being a desirable feature of the plant. Old plants may be improved with light pruning of older branches, followed by watering and feeding to encourage renewed vigour.
- Seed: germinates readily and should be sown in spring (requiring a warm, moist atmosphere). Seed needs to be harvested from mature cones. Cones being placed into a glass jar in a warm dry spot until the seeds are released.
- Readily available
- Used extensively on the Gold Coast, QLD, Northern Australia and overseas (New Zealand, Egypt).', architectural_uses: '- Coastal plant (primary)
- Ornamental plant
- Reduces erosion (soil binder)
- Street tree
- Tolerates harsh conditions
- Windbreak', culture: 'The extremely tough timber of Casuarina\'s has been used for poles and scaffolding, tool handles, charcoal, parquetry.
This wood has also been used for traditional Aboriginal hunting weapons.', conservation: 'Plants are wind pollinated.', wildlife: 'Attracts
- Birds
- Seed eaters', architectural_info: 'Ideal for stabilisation of gullies, dunes, and in the reclamation of land. Can be used to drain wet areas (ie will take up a lot of water, this may be detrimental to other plants). Bonsai specimen. Firewood tree. Fodder tree.', characteristics: '- Graceful, weeping, Tree 6 - 12m
- Open canopy
- Vigorous growth rate
', environment: '- Full sun
- Partial shade
- Water during establishment
- Prefers sand soils
- Frost tolerant
- Wind tolerant
- Salt Tolerant', scientific_name: 'Casuarina equisetifolia')
CurrentPlant.create(name: 'Illyarrie', common_name: 'Illyarrie, Red-capped gum, Bookara gum', family: 'MYRTACEAE', description: 'Interesting small to medium tree with vibrant red bud-caps, attractive yellow flowers and urn-shaped fruits. It is commonly used in dried floral arrangements.', synonym: '', subspecies: '', location_name: 'Recreation Centre carpark, Tax garden', general_info: 'Illyarrie although naturally restricted to coastal limestone soils is adaptable to a wider range of soil types ranging from clay and granitic loams to coastal sands.', additional_info: 'From the Greek erythros meaning \'red\' and corys meaning \'helmet\', which refers to the red bud cap. 
The common name \'Illyarrie\' being a native name referring to the ornamental appearance of the tree. 
Collected by James Drummond in December 1851 on returning to Perth from Geraldton along the old stock route (from limestone hills to the west of the Valley of the Lakes). It was also collected shortly afterward by Augustus Oldfield, a botanist collecting specimens between Port Gregory and Shark Bay. Named in 1860 by Ferdinand von Mueller. 
Originating from the Dongara, Eneabba coastal region of Western Australia. Being highly restricted in its native habitat.', identification: 'Distinguishing feature is its striking red, square shaped budcaps. 
Mature leaves are opposite, leathery, bright gree, smooth and narrowly lanceolate or falcate, or sickle-shaped 12-25cm long x 1-4cm wide, petiole 1-3cm long. Lateral veins are prominent making an angle of 25-35 degrees with the midrib. The intramarginal vein being very close to the leaf margin. The leaf is dotted with numerous oil cavities. Flower buds are 2.5cm long and occur in umbels of three with short flattened pedicels on a flattened peduncle 2.5cm long. Bud caps are bright red, domed and grooved, with four raised ridges forming a cross. Stames are bright yellow, in four groups, with the filaments varying in length. The fruit is woody 2.5-4cm long x 3-5cm wide, broadly bell or square shaped with ribs developed from the bud. Seed brown-black, shallowly pyramidal, sometimes extended into lateral wings, ventral side ribbed.', physical:'- Sickle-shaped, dark green foliage.
- Showing a profuse display of large, yellow, showy flowers. Flowers during January - June [autumn].
used for cut flowers or floral art
- Large, 2.5 to 4cm wide, brown fruit. Fruits are distorted, square-shaped, woody. Fruiting bodies are profuse in their abundance.
- Small, 0.4-0.6cm wide, brown seeds.
- smooth grey to white and is shed in thin grey-brown flakes (some of which persist on the trunk before being finally shed). The timber is pale, soft, brittle and short-grained., noted for its attrative trunk.', horticulture: '- Commonly thought to be frost tender, it has been able to withstand frost to -5 degrees Celcius in cultivation trials in California. It has also been known to grow in dry areas with a minimum of 356mm annual rainfall. The species can attain 4.5m height in 4 years often flowering after 2 years.
- low maintenance required. the use of blood and bone fertliser is beneficial and so too is the presence of lime.
- minimal - As a small plant it grows straight but may tend to sprawl and be susceptible to wind damage. Young plants should be cut back causing multiple trunks to develop to encourage a denser form, this form can grow up to 3-9m.
- Seed - Seed can be collected year round. Fertile seeds are dark brown, more or less pyramidal 4-6mm long with a honeycomb pattern. Sterile seeds are yellow-brown or red-brown narrowly wedge-shaped 3-6mm long with a fine net-like pattern. There is an average of 14 viable seed per gram of fertile and sterile seed. 
- Phytophthora cinnamomi (dieback)
- readily available. successfully cultivated throughout Australia and overseas (New Zealand and California).', architectural_uses: 'coastal plant - secondary
drain clogger
drought resistant
ornamental plant
potted specimen
street tree', culture: '', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: 'A favourite garden enhancement tree, commonly planted throughout southern Australia. Found lining King William Street South, the main street of Adelaide, South Australia. Recommended for gardens, parks and street planting in coastal and inland areas of southern Australia including southern Queensland, New Zealand and California.', characteristics: 'conspicous, tangled - branched, spreading, tree 6 - 12m. With a open canopy.', environment: '- full sun   
- one drop
- Prefers all types soils.
- Salt Tolerant', scientific_name: 'Eucalyptus erythrocorys')
CurrentPlant.create(name: 'Italian cypress', common_name: 'Italian cypress, Mediterranean cypress', family: 'CUPRESSACEAE', description: 'attractive slender conifer great for large gardens or parks', synonym: '', subspecies: '', location_name: 'Taxonomic garden', general_info: 'can survive in arid, sandy soils', additional_info: '', identification: 'Foliage is grey-green, held in erect sprays. Cupressus species have small, needle-like young foliage which matures into tiny leaf scales. Separate male and female flowers borne in March (inconspicuous). Male flowers terminal on branchlets, yellow from the pollen. Female flowers develop into rounded, grey-brown, woody cones when fertilised (persisting on the tree for several years). Cones are 1.8-3cm wide with 8-14 spiked scales.', physical:'- Scale-like grey-, aromatic, green foliage.
- Showing a inconspicuous display of yellow flowers. Flowers during March.
- Medium, 1.8 - 3cm wide, rounded cones, glossy, scaled, grey-, brown cones are displayed all year round. Cones are moderate in their abundance.
- Small, winged seeds.
- Reddish brown, thin, shallowly ridged', horticulture: '- Fast growing when young
- Low maintenance required. withstanding temperatures to minimum -15 degrees C.
- Regular pruning - Pruning is useful to shape and control the size of the plant. When young, pruning should be done to leave a single leader. Prune regularly to promote new growth, as old wood (brown branches) will not re-shoot. Cuts should be inconspicuous and; slanting towards the sky \'above eyelevel\' and slanting towards the ground \'below eyelevel\'.
- Cutting - Most cultivars can be propagated from evergreen hardwood cuttings, taken between late autumn and late winter. Collect cuttings from young specimens, treat with a rooting hormone and keep strike in a humid environment.
- Seed - Propagation is from seed. Seed may require stratification or cold treatment (6-8weeks in a refrigerator) to initiate germination.
- Fungal attack - canker is known to attack conifers
- Slugs and snails - Leafroller caterpillars eat the soft new growth of Cupressus. Other common pests include; beetles and weevils
- Readily available. The Australian cultivar, \'Swane\'s Golden\' (Swane\'s golden pencil pine) is a stately, slim conifer with the largest cones in the genus.', architectural_uses: '- Coastal plant - secondary
- Ornamental plant
- Potted specimen', culture: 'Its strong, long-lasting wood has a pleasant odour. During the Middle Ages clothes chests were made from the wood.', conservation: '', wildlife: '', architectural_info: 'Often used in symetrical patterns
\'Swane\'s Golden\' is often grown in large landscaped parks and gardens or paired in tubs at entrance ways. This cultivar has a large spreading root system and is not suitable for smaller urban gardens.', characteristics: '- narrow
- erect
- conifer > 12m. 
- With a dense canopy and vigorous growth rate.', environment: '- Full sun
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Cupressus sempervirens')
CurrentPlant.create(name: 'Jacaranda', common_name: 'Jacaranda', family: 'BIGNONIACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Bipinnate leaves. Mauve flowers in summer. Round pods 10 cm. Deciduous.', physical:'Attractive, Bipinnate, 30 cm long foliage.
', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Medium sized tree 8-15 m, 6-10 m, tree 6 - 12m. With a open canopy.', environment: '', scientific_name: 'Jacaranda mimosifolia')
CurrentPlant.create(name: 'Japanese Ivy', common_name: 'Japanese Ivy, Boston Ivy', family: 'VITACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Three cusps (points) on leaves', physical:'- Attractive, three lobed leaf, green foliage.
- Showing a inconspicuous display of small, green, inconspicuous flowers.
- Small, blue fruit. Fruits are clusters on red branchlets. Fruiting bodies are moderate in their abundance.
- Small, black, appears as small berry seeds. Seed is inconspicuous in its abundance.', horticulture: '- Propagation by cutting, seed or rooted layers.
- Low maintenance required.
- Readily available.', architectural_uses: '- Fence screener
- Freeway sites
- Ornamental plant
- Trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'Grown for its attractive foliage, ideal for clothing walls.', characteristics: '- Vigorous self clinging climber
- Perennial climber 6 - 12m, with a vigorous growth rate.', environment: '- Full sun
- Partial shade  
- Two drop', scientific_name: 'Parthenocissus tricuspidata (incomplete)')
CurrentPlant.create(name: 'Jarrah', common_name: 'Jarrah, Swan River Mahogany', family: 'MYRTACEAE', description: 'Often smaller and a more moderate size on the western side of the coastal plain, suitable for parks and gardens. Renowned for its timber qualities.', synonym: '', subspecies: '', location_name: 'James\'s oval', general_info: 'Jarrah has adapted to poor soils and grows on laterites on the Darling Plateau (best on low hills on lateritic gravel) and on the sands on the coastal plain. Growing well on the Cottesloe and Karrakatta soils of the western coastal plain, where it is better able to resist dieback.', additional_info: 'Latin marginatus meaning \'having a border\', referring to the distinct marginal leaf vien or the thickened reddish margins on the leaf.
Its red timber giving it its early common name of \'Swan River Mahogany\'. 
First collected in 1791 by Archibald Menzies in King George Sound. Being later named in 1799 from a specimen cultivated at Kew Gardens in England by W.T. Aiton, Royal Gardener at Kew. 
Originating from Western Australia. Its full distribution stretching from the Mount Leseuer National Park in the north to the Stirling Range and adjacent coastal areas in the south with isolated populations at Jilakin Rock and Tutanning nature Reserve in the central wheatbelt. These eastern populations suggesting that Jarrah\'s range was previously more extensive, presumably when climatic conditions were wetter. Today Jarrah\'s inland boundary is determined by the annual 600mm isohyet.', identification: 'It is the most widespread tree of the coastal plain around Perth, occuring as a smaller more branching tree to 15m, and is less common but still frequently seen on the clayey soils on the Darling Scarp, where it is a taller forest tree. It can be seen as a mallee on slopes of the Stirling Range and on Mount Lesueur. 
Adult leaves are glossy dark green above and dull pale green below, with a distinct leaf margin. Note that this two sided leaf form is common of specimens growing on the coastal plain and in the lower south-west, whereas leaf colour on the Darling Plateau (notably to the north and on the Dandaragan Plateau) are more blue-green. The blue-leaved form having much the same colour on both sides of the leaves. The cylindrical buds have a long conical bud cap, longer than the floral tube. Major reproductive growth is in summer when the flower buds are produced in the axils of new leaves. Some buds are shed from year to year with those retained developing strongly the following spring, when they can be seen as yellow or orange patches in the foliage, flowering in spring and summer. Flowering occurs before summer leaf-growth and so allow the flowers to be well displayed along the ends of the twigs. Fertilised flowers mature a year later and form mature fruit. The fruits are rounded or globular to barrel or cup-shaped, 12-15 x 12-15mm. Heavy budding and fruiting is often at the expense of leaf production resulting in thin crowns after the older leaves have been shed. Foliage thickens again once the fruits have matured. Seed is lustrous or matt, black, pyramidal, with kidney shaped seed-leaves. 
Can be easily distinguished by its long and strappy bark from C. calophylla (Marri) whose bark is blocky.', physical:'- Glossy, dark green foliage.
- Showing white flowers. Flowers during September - February [spring, summer].
- Small, 1.2-1.5cm wide, brown fruit. Fruits are rounded to barrel-shaped.
- Small, 0.5-0.6cm wide, black, pyramidal seeds.
- Persistent rough grey fibrous bark, being brown in the furrows. The bark is long and stringy; strips can be easily pulled off revealing a cinnamon or reddish coloured bark (stringybark). The timber is deep red.', horticulture: '- Is only recently begun to be cultivated (eg towards the northern end of Perry Lakes Drive, and in places along the Kwinana and Mitchell Freeways). If overshadowed it will be slow growing, otherwise it develops strongly.
- low maintenance required. Usually frost resistant
- seed - can be collected year round, establishment best from seedlings
- insect attack - often the foliage turns brown in spring due to the jarrah leaf-miner larvae which eats the tissue between the outer layers of the leaf, leaving reddish brown patches. It also makes small oval-shaped holes. The mature larva cuts out the outer leaf layers and cements them together to form a sac, in which it falls to the ground. It then burrows into a crack to pupate. The tree recovers by producing a fresh summer crop of leaves. Other pests include; the red-legged weevil, and sawfly larvea - commonly known as \'spitfires\'.
Phytophthora cinnamomi (dieback)
- not readily available. Has been planted in many overseas countries (Chile and the Congo Republic) but has been noted for its slow growth. With plantations failing to be successful. It is cultivated in King\'s Park, Perth, but does not appear to be grown in other States.', architectural_uses: '', culture: 'Jarrah is easily the most famous Perth eucalypt, being renowed for its hardwood qualities it is the principal timber tree of Western Australia. The timber is beautifully grained, rosy-red, strong and hard but easily worked. It is also durable and fairly fire-resistant. Many famous roads in cities such as London and Berlin were paved with jarrah blocks, prior to the use of bitumen and concrete. Today however the timber is used for high-quality wooden furniture. 
Aboriginies used it for making spear-throwers. 
During good flowering seasons, jarrah provides ample highly nutritious pollen for honey production and maintenance of bee colonies. Jarrah honey being a medium-amber colour with a nutty-flavour.', conservation: 'The Jarrah forest is regarded as one of the world\'s most unique forest ecosystems. 
Jarrah is abundant on the Darling Plateau where it makes up a large amount of the State Forest. It is generally cut for timber purposes and so most specimens are slender in appearance due to regrowth. Old specimens from virgin forests showing more height and and thickness. A few exceptionally large specimens exist, up to 500 years of age, 50m in height, 3-4m in trunk diameter. The growth pattern of jarrah (in forests) on laterite soils is quite determined due to their competion for light and nutrients. Jarrah often passing through regular stages of growth; from a low shrub with many branches originating from the lignotuber (swelling at their base) to a small sapling with a distinct crown, to the \'pole stage\' when the larger lower branches are retained for some time before being shed, to a slender tall tree encompassing the \'pile\' stage when the tree begins to form branches that will persist. This habit is not maintained on the coastal plain however where jarrah is largely free from environmental growth restrictions, being associated with banksias and sheoaks, hence each tree has an individual form. 
The well known disease Phytophthora cinnamomi \'dieback\' (believed to evolved in south-east Asia) affects the jarrah forest of the Darling Plateau. Attacking the root systems of trees and shrubs, killing certain susceptible species. Jarrah is susceptible when on the poorly nourished laterite soils and dies within years (especially within the low-lying areas of the forest). The commonly seen, dead open crowns, littering the skyline. It was estimated that 282, 000 ha of forest had already been affected by dieback disease by 1974, and that rates of increase were estimated to be 20, 000 ha per annum. Jarrah does not succumb in all environments, with it surviving much better on the western side of the coastal plain where conditions are less suitable to the disease.', wildlife: 'Attracts:
- birds, insect-eaters - larvae of the jarrah leaf-minor is eaten by pardalotes, thornbills and parrots. Other species of birds are also attracted during flowering to feed on associated insects.
- birds, seed-eaters 
- insects - wasps, ants, beetles and earwigs also feed on the larvae of the jarrah leaf-minor', architectural_info: 'Often grows to a more moderate size on the Spearwood soils making it more suitable for growing in urban areas than many eastern states eucalypts.', characteristics: 'variable shaped, tall, tree > 12m. With a dense canopy.
', environment: '- full sun
- partial shade
- one drop
- Frost Tolerant', scientific_name: 'Eucalyptus marginata')
CurrentPlant.create(name: 'Jointed twigrush', common_name: 'Jointed twigrush', family: 'CYPERACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'found growing on the perimeter of lakes, tolerating deep inundation (>1m) for prolonged periods. Tolerating a wide range of water conditions (fresh and brackish).', additional_info: 'Known as the \'Jointed twigrush\' due to the partitioning of the stems, showing numerous nodes.
Widespreading and is found in all Australian states except the Northern Territory. Commonly found north of Perth to Hopetoun. Also being found in New Zealand, New Guinea, New Caledonia and Vanuatu.', identification: 'A sedge which often forms extensive colonies along lake margins.', physical:'- Cylindrical spike-like, green foliage.
- Showing large, 15 - 45cm wide, brown, floral spike, grey flowers. Flowers during September - January [spring].
- Small fruit. Fruits are nuts.', horticulture: '- low maintenance required.
- division - readily established through rhizome division. During winter divide plant into 0.2m rhizome lengths. Making sure each division has a good root mass and culm of healthy leaves (do not trim leaves). Plant at 1m spacings and 25cm depth.
- seed - seed can be propagated by in-vitro culture
- not readily available.', architectural_uses: '- waterside position
- wetland plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rhizomatous, spreading, Perennial sedge > 1m.', environment: '', scientific_name: 'Baumea articulata')
CurrentPlant.create(name: 'Kentia Palm', common_name: 'Kentia Palm', family: 'ARECACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Lord Howe Island - named after Lord Howe a British admiral in the 18th century. Hence Howea', identification: '', physical:'- Fronds 2-5 m long foliage.', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Palm to 15 m, palm 6 - 12m.', environment: '', scientific_name: 'Howea forsteriana (incomplete)')
CurrentPlant.create(name: 'Kidney weed', common_name: 'Kidney weed', family: 'CONVOLVULACEAE', description: 'Makes an attractive, soft, green lawn (it doesn\'t like too much foot traffic). Can become invasive in garden beds.', synonym: 'D. micrantha', subspecies: '', location_name: 'Agriculture garden, Orchard', general_info: 'prefers light to medium textured fertile soils. Tolerates temporary inundation.', additional_info: 'Native to both Australia and New Zealand, South Africa and temperate South America.', identification: 'Kidney-shaped (similar shape to a minature water lily pad) leaves are 3cm wide (covered with sericeous grey hairs). Leaves petiolate, petiole largely flattened (0.7-4.5cm long), blade is cordate-circular (0.8-2.8cm wide). Roots at the nodes. Flowers are small greenish and inconspicuous, produced in spring.
Naturally occurring within the south-west Western Australian region - on Rottnest Island, Garden Island, along the south coast near Augusta ot the Recherche Archipelago.', physical:'- Attractive, kidney-shaped, green foliage.
- Showing a inconspicuous display of small, green flowers. Flowers during September - November [spring].', horticulture: '- Roots at the nodes. Can become invasive in garden beds.
- Plant at 30cm centres. Note if in heavy shade stems may become elongated, foliage becoming splotchy white - yellow.
- division - in spring or autumn.
- not readily available.', architectural_uses: '- coastal plant - secondary
- groundcover
- groundcover suitable to dominate large expanses
- groundcover suitable with some trees or shrubs
- groundcovers for small areas between shrubs or driveway strips
- lawn alternative
- reduces erosion - soil binder
- rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'makes an attractive, soft, green lawn (it doesn\'t like too much foot traffic). Does well under a tree in a shady spot.', characteristics: 'mat-forming, spreading, Perennial herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Dichondra repens')
CurrentPlant.create(name: 'Kingia', common_name: 'Kingia, Bullanock, Black gin', family: 'DASYPOGONACEAE', description: 'Beautiful ornamental tree, very slow growing, not able to be transplanted as mature adults.', synonym: '', subspecies: '', location_name: '', general_info: 'Found predominantly on the clayey flats on the eastern side of the coastal plain, and has been seen growing in selected sites on the Darling Scarp. Habitat is generally sandy loam and clay loam with a preference for more swampy conditions or areas with a high water table.', additional_info: 'australis is Latin for \'southern\', and refers either to \'the southern hemisphere\' or the \'southern-part\' of the Australian continent.
Collected by Robert Brown in 1801 at King George Sound.

Being naturally found predominantly in the lower south-west, Western Australia. It extends east to Cape Riche (east of Albany) and northwards to Mt Lesueur near Jurien Bay. Outlying populations exist near the Hill River. Its distribution being more restricted than Xanthorrhoea preissii (Grass trees).', identification: 'Visually quite similar to Xanthorrhoes preissii, also an arborescent monocot. Though it can be distinguished by; its multiple flowering stems which are much shorter than those of X. preissii, leaves are slightly flatter and are drumstick-like in shape (rounded floral head on the spike), the trunk (or caudex) is straight an rarely branched. If the trunk is branched this indicates that the growth tip was probably damaged.
The leaves which radiate from the top of the stem create a \'fan\' appearance, when young they stand erect but with age they start to droop down, dying and curving in to give the tree a skirt-like look (partially covering a section of the trunk). Leaves are silky bluish-green up to 2m long, when pulled out they have a broad leaf base up to 2.5cm wide. Note that the leaves vary in their \'hairyness\', with the leaf bases being distinctly silky-hairy. The \'drumstick\' or \'globe artichoke-like\' inflorescense consists of a pom-pom like flowerhead (head diameter 4-7cm) on the tip of a stout peduncle (30-40cm long), the peduncle is pale green and covered with silky bracts (giving it a scaly appearance). The spike is bright yellow-green when young, browing with age and drooping down into the old leaves which make the \'skirt-like\' appearance around the top part of the stem. The production of inflorescences can be quite varied with 2/3rds of plants producing a few infloresences in any one growing season, while up to 100 may be produced after a fire event. Flowering is in winter. The trunk is around 30-38cm wide.

Multiple inflorescences are produced from just below the growing shoot of the plant. This means that vegetative growth is generally maintained in an upward direction, causing the plant to have a very straight trunk.', physical:'- Attractive, silky bluish-, green foliage.
- Showing a moderate display of large, 30 - 40cm wide, yellow, drumstick shaped flower-spike flowers. Flowers during June - August [winter].
- The trunk is generally black, caused by charring from fire. It is comprised of flat leaf bases which are packed in closely compressed spirals (cemented with resin), inside this is a fibrous central core (vascular)(note this plant is a monocot). The wood at the base of the core is very dense, with waves., noted for its attrative trunk.', horticulture: '- Note that this species has hermaphroditic flowers, pollination being done by insects. The number of flowers that set fruit is very low (0.1-5.3%), due to the lack of available space on the floral spike.
- low maintenance required.
- prune after flowering - removal of the floral spikes is all that is required. These may be left on if desired. 
- seed - seed should be collected when it has matured, this occurs when the floral spikes brown and curve downwards.
- not readily available. Mature Kingia cannot be transplanted like Xanthorrhoea. Obtaining large instant specimens is therefore not possible. This together with their very slow growth rate means that their use in horticulture is limited. Young plants propagated from seed have been cultivated at the Australian National Botanic Gardens.', architectural_uses: 'ornamental plant
potted specimen
rockery plan', culture: 'Europeans used Kingia trunks to make barn, stable and shed floors. The timber known to be resistant to termites. As dried Blackboys (shiny, leaf bases) were used as a fuel source, mostly for kindling, in Western Australia, it is highly likely that Kingia were used in a similar manner. Blackboy timber is also used by craftsmen, making an unusual but beautiful media to create vases, bowls and lamp bases. Perhaps Kingia timber is also used in a similar way.
Resin properties of Kingia are not documented, it is of interest however that early Europeans used gum exuded from the trunk of Xanthorrhoea preissii (the Grass tree) to make varnish. This resin was found to be soluble in alcohol and ether but not in turpentine, and when fractured showed a rich ruby or chrome-orange colour. It was used mainly to colour varnishes which were used to imitate cedar. Resin was also once harvested as a source of picric acid.

It seems likely that many of the uses of Xanthorrhoea by Aborigines may be relevant to Kingia (this is purely an assumption). These include; 
The floral spikes were soaked in water to create a sugar rich drink (some being alcoholic). 
The bases of the inner most (youngest) leaves were eaten (raw or roasted), the tender white shoots having a nutty flavour. 
Leaves were also used in combination with bark to making the thatching for shelters. 
Bardi grubs found living in the trunk of the Blackboy were eaten, and gum exuded from the floral stems was made into cakes. 
Gum or resin from the trunk being used to fasten the stone or glass spearheads to the shaft of spears.', conservation: '
Kingia, like Xanthorrhoea, live for a very long time (centuries) and have very slow growth rates. Aging these plants is possible (though destructive) by removing the leaf-bases and aerial roots and examining the core of the trunk. This core has waves and each wave has been found to correspond to a year\'s growth. Quicker though, you can measure the diameter and by knowing that growth of the stem is roughly 1.5 cm / year, you can calculate its age. Prolific flowering creates a pattern in the trunk and when seen on very old specimens (400 years old) this provides us with a unique insight into the bush ecology. From a specimen in Roleystone (a hill suburb of Perth) it was ascertained that fires rarely occurred in the 200 years prior to European settlement.

Kingia survive bush fires well due to their thick outer leaf-base trunk. Flowering is stimulated and quick flower growth occurs (the onset of flowering within 3 weeks).

The aerial roots seen on Kingia are unusual, such an adaptive feature tends to suggest that Kingia previously inhabited more wet, moist environments such as rainforests. Today Kingia grows in drier areas, environmental conditions changing dramatically ............ These roots are produced at the onset of winter and descend down the trunk underneath the leaf-bases (inside the leaf base ring, so they are not visible). They grow 2cm a month during the growing season and send out laterals roots. Some enter the soil upon where they grow directly downward. 
It is thought that these roots are advantageous to the plant in many ways; 
Obviously if the plant is growing in water or waterlogged sites these roots help to take up oxygen (this explains why such specimens grow well), the fine roots which entertwine within the leaf bases and may absorb water that collects here after short summer and autumn showers which are not heavy enough to substantially wet the soil. 
Nutrients are probably also extracted in a similar manner from decaying organic matter such as leaves or bird droppings, which happen to reside on the leaf-base trunk. 
These roots may also play a role in the longevity of this plant via physical protection, such as in situations when the leaf-bases rot away (with old age) the compact mesh of roots protects the fibrous core from fire and insects. 
Mechanically speaking these roots may also help to stabilise the trunk of the plant especially when the trunk\'s soft fibrous core dies back (after 300 or 400 years). During this time the plant is able to live purely through the connection these roots make with the soil. 
Additionally this plant, if knocked over, will grow new roots from its trunk (aerial roots) into the soil and continue to survive.', wildlife: 'Attracts:
- birds, honey-eaters - flowering attracts many birds, including the silvereye
- insects - many insects are attracted to this plant during flowering, and others shelter in its leaves year-round (notably a species of lucanid beetle identifiable by the metallic sheen of its outer casing).', architectural_info: '', characteristics: 'erect, palm-like, tree < 6m.', environment: '- full sun  
- one drop
- Prefers loam soils.', scientific_name: 'Kingia australis')
CurrentPlant.create(name: 'Knotted club rush', common_name: 'Knotted club rush', family: 'CYPERACEAE', description: 'Dense tufted habit featuring dense ball-like heads. very tough plant. Suitable to a wide range of habitats.', synonym: 'Isolepis nodosa', subspecies: '', location_name: 'Booyeembarra Park, Murdoch campus', general_info: 'Occurs on sand dunes. Grows in sand along the coast and inland along river courses. Very tough plant will survive without summer watering once established.', additional_info: '', identification: 'Perennial tufted plant growing from a rhizome. Rigid, finely ribbed stems densely tufted to 90 cm. Leaves reduces to a reddish-brown basal sheath. Involucral bract is erect and appears as a continuation of the stem above the inflorescence. Inflorescence charcteristic dense ball of numerous brown spikelets 5-25 mm across. Brown glumes broadly ovate with narrow translucent margins. Stames (3), 3 style branches. Flowers Nov- Mar.', physical:'- Reduced to basal sheaths, green foliage.
- Showing a moderate display of medium, inflorescence 0.5-2.5 cm in diametercm wide, brown, ball-like inflorescence flowers. Flowers during November - March [summer].
- Medium, 0.5-2.5cmcm wide, brown fruit are displayed during February - July [autumn]. Fruits are ball-like head. Fruiting bodies are moderate in their abundance.
- Small, 0.1cm wide, brown, smooth nut obtusely 3-angled seeds are seen during February - July [autumn]. Seed is inconspicuous in its abundance.', horticulture: '- Very tough plant. Useful tall ground cover in low maintenance areas.
- low maintenance required. Minimal maintenance. Dead lower foliage can be removed once a year in autumn if desired. No pests or disease issues. Will self-seed and spread.
- readily available. Available from many Australian plant nurseries.', architectural_uses: '- coastal plant - primary
- coastal plant - secondary
- drought resistant
- freeway sites
- groundcover suitable with some trees or shrubs
- groundcovers for areas where some height is required
- ornamental plant
- reduces erosion - soil binder
- rockery plant
- tolerates harsh conditions
- waterside position
- wetland plant', culture: '', conservation: 'The dense tufts and rhizomatous habit make this a useful plant to bind sand in harsh environments, such as sand dunes, and along fresh and salty wetlands behind other wetland species (eg Juncea sp.). Dense stems may provide habitat for ground dwelling animals.', wildlife: '', architectural_info: 'Tufted stems form a useful textural contrast. Ball-like heads add to stem appearance. Very tough plant.', characteristics: 'Tufted sedge, 60 cm, Perennial sedge < 1m. With a dense canopy and vigorous growth rate.', environment: '- full sun 
- One drop - may require summer watering.
- Prefers all types soils, with a neutral to acidic pH.
- Wind Tolerant 
- Salt Tolerant', scientific_name: 'Ficinia nodosa')
CurrentPlant.create(name: 'Lacy tree fern', common_name: 'Lacy tree fern, Scaly tree fern', family: 'CYATHEACEAE', description: 'Grown for their vigorous growth rate, attractive foliage and overall appearance', synonym: 'Alsophila cooperi', subspecies: '', location_name: 'Computer science courtyard', general_info: 'Requires deep well composted, moisture retentive soil. Prefers a sheltered position with a humid environment. It is best in partial shade though it can tolerate sun if roots are keep moist and cool. Can also be planted in heavy shade. Best when protected from wind, heat and frost. Tolerates temporary inundation.', additional_info: 'Being native to Queensland (south of Cooktown) and New South Wales (reaching the Illawarra district). Having naturalised in Western Australia along creek banks in Bedfordale.', identification: 'Finely divided fronds radiate from the crown of the trunk. Fronds are green above paler beneath, up to 4m long and covered with reddish brown hairs. The frond base is densely clothed in long whitish and short red-brown chaffy scales (distinguishing feature). Note that as fronds are shed they leave behind large oval cleancut scars on the trunk (often referred to as coin spots). At the apex of the trunk the uncurling fronds (croziers) are covered with long silky white scales, very attractive looking. The trunk is up to 15cm in diameter, thickened at the base. Trunks are composed of knitted together aerial roots. Below the ground the roots are normal. Reproduction is via spores, which are profusely displayed on the underside of the frond in spring.', physical:'- Attractive, finely divided fronds, green foliage.
- Small, brown, spore seeds are seen during September - November [spring]. Seed is profuse in its abundance.', horticulture: '- Specimens in full sun will require more water than those in more sheltered positions
- Small specimens make good container plants and should be watered freely during summer, less at other times. Potted specimens will eventually need replanting.
- Transplanting of established plants can be successful if care is taken (ie the subterranean roots are not damaged). When purchasing make sure the plant has a good root system, with plump furry young fronds. Feed with lots of water during establishment. Cool the roots by mulching with peatmoss or leaf mould. Note that tree ferns are protected species and should only be bought if they bear an official tag.
- Low maintenance required. frost tender
- Spore - spores are shed in spring, with sporelings appearing in moist damp areas
- Readily available. widely cultivated', architectural_uses: '- ornamental plant
- potted specime', culture: '', conservation: '', wildlife: '', architectural_info: 'very good planted under trees in groups or solitary. Arching fronds filter light and are good to plant smaller ferns under.', characteristics: '- Tree
- fern > 2m. 
- With a vigorous growth rate.', environment: '- Partial shade
- May require summer watering.
- Prefers well drained soils', scientific_name: 'Cyathea cooperi')
CurrentPlant.create(name: 'Lemon-scented darwinia', common_name: 'Lemon-scented darwinia, Lemon-scented myrtle', family: 'MYRTACEAE', description: 'This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'UWA Campus: Taxonomic garden', general_info: 'found naturally associated with granitic rocks or heavy soils near watercourses. Generally adaptable, requires some moisture (will withstand full sun, but best grown with some shade)', additional_info: 'citriodora is Latin for \'lemon scented\' and describes the smell of the foliage when crushed, hence the common name of \'Lemon-scented darwinia\' or \'Lemon-scented myrtle\'.', identification: 'In its natural environment this small shrub is often open and thin, becoming denser and more bushy in cultivation. Leaves are opposite-decussate (right angles) ovate-oblong (almost triangular) to 1-1.2cm long x 0.6-0.8mm wide, apex obtuse, base rounded, margin entire recurved laterally, midrib prominent on underside, glandular and strongly aromatic when crushed - lemon scented. Leaves may be stained or tinted reddish bronze in cold weather (autumn and winter). Flowers are in small terminal heads of 4 - 6, sheathed at the base by a whorl of bracts (green-red)(note bracts not prominent, somewhat shorter than the leaves 5-9mm broad), inner segments green stained with yellow and red, 5 yellowish petals almost closed over the 10 stamens, 4-6 red prominent styles. Flowering from mid-winter to early summer. Fruit is a fleshy nut bearing a single seed.
Variable within the Perth region, with regard to length of the flowers and styles.

Found from the Avon River southward, on the Darling Scarp and Range, at the base of the Scarp along watercourses. Extends to the Porongorups.', physical:'- Attractive, oblong to lanceolate, grey-, aromatic, green foliage.
- Showing small, red flowers. Flowers during July - December [spring].
- fruit. Fruits are fleshy nut.
- white, soft seeds.', horticulture: '- Often used as a root stock for other more difficult Darwinia species.
- Prune to form a good hedge, screen, or container plant.
- low maintenance required. Tolerant of Phytopthora cinnamomi.
- Mulching around the root area is recommended. This protects and cools the roots, keeping the soil moist. Moist soil is also very important during the establishment of plants. Water moderately when in growth, less at other times. Keep in a sheltered position where they wont be damaged from severe frosts (species being frost hardy to half hardy).
- Best when soil is not rich in nitrogen.
- minimal - Pruning is minimal with early tip-pruning post flowering required to thicken growth. Removal of old straggly stems helps improve appearance.
- cutting - propagate from semi-ripe leafy cuttings late in summer. Strike into individual containers with a sand/peat mixture and place in a humid environment (rooting hormones are useful).
- insect attack - May be attacked by scale insects. Remedy by using white oil.
- readily available. widely cultivated, a prostrate form is available commercially.', architectural_uses: 'coastal plant - secondary
fence screener
groundcovers for areas where some height is required
hedge
potted specimen
rockery plant
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: 'can make an attractive low hedge, windbreak or screen if pruned correctly. Flowers can make attractive displays. This native blends well with exotics.', characteristics: 'rounded, compact, woody shrub < 1m.', environment: 'partial shade
Prefers sand, well drained soils, with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Darwinia citriodora')
CurrentPlant.create(name: 'Lemon-scented gum', common_name: 'Lemon-scented gum, Lemon-scented spotted gum', family: 'MYRTACEAE', description: 'tall beautiful attractive tree', synonym: 'E. citriodora', subspecies: '', location_name: '', general_info: 'Will grow in a variety of soils, prefering medium to sandy loams or well drained gravels where additional irrigation is available during dry times. Will tolerate cold clay soils that are poorly drained, but not boggy or stagnant in winter, and usually dry out in summer. Known to tolerate dry or wet conditions, but not severe frosts.', additional_info: 'latin citri meaning \'lemon\', odorus meaning \'having a smell\', referring to the lemon scented foliage. 
Originating from a small region in sub-tropical Queensland, around the Tropic of Capricorn, between the coast and the great dividing range. Its principal area is the region from Maryborough to north of Rockhampton and west to Mantuan Downs.', identification: 'Juvenile leaves glossy green, petiolate, opposite for a few pairs then alternate, ovate to broadly-lanceolate, hairy 14-21 x 4.5-8cm. Mature leaves are alternate, linear-lanceolate, 12-20cm long and 1-2cm wide, with a yellow tinged petiole to 1cm, pale to mid-green in colour but not lustrous. Leaves when crushed are strongly lemon scented (numerous large island oil glands). Buds pedicellate, clavate to 1 x0.6cm, no scar, operculum conical to slightly beaked. Flowers are in terminal corymbose clusters of 3 to 8, on short leafless shoots in axils of leaves towards the ends of branches, calyx tube cup-shaped to 7-8mm deep, with a small blunt umbo; filaments are white and anthers are deep cream. Fruit pedicellate, truncate to ovoid to urceolate 1.5x1cm.', physical:'- Lemon-scented, long, narrow, pendulous, aromatic, green foliage.
- Showing a moderate display of white, clusters flowers. Flowers during June - August [winter].
- 1cm wide fruit. Fruits are urn-shaped, warty fruit capsule.
- bark of trunk and outer branches is smooth white, cream or pink, becoming pale grey before decorticating in irregular curling sheets and strips in late spring., noted for its attrative trunk.', horticulture: '- Very lime tolerant. Frost tender. Tolerant of Phytophthora cinnamomi.
- low maintenance required.
- minimal - can be coppiced i.e. trunk cut at or near ground level, and new growth forms just below the cut - to produce multiple trunks for aesthetics or windbreaks or for firewood or to renew vigour of the tree.
- fungal attack - may be susceptible to sooty mould (in tropical areas)
- readily available. It has been widely planted both in Australia and overseas.', architectural_uses: 'branch dropper
coastal plant - secondary
drain clogger
freeway sites
ornamental plant
shade tree', culture: 'The characteristic lemon-scent of the leaves is derived from citronellal. This oil has been distilled for commercial purposes. 
When mosquitoes were annoying, Aborigines would stack branches (rich with foliage) upon each other away from the camp, attracting them to another area.', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: 'Being known as one of the most graceful of the eucalypts, it creates a dramatic effect in any landscape, and with its open crown allows understorey plants to thrive. Well suited to parks, large gardens, but not to carparks, golf courses, streets or play-grounds where the bark may be damaged. Its wood burns well and when combined with its quick growth E. citriodora is commonly considered a good \'firewood tree\'. A favourite cultivated tree in Perth it is often grown in association with E. maculata, spotted gum, and can be seen lining the roads in Kings Park.', characteristics: 'graceful, slender, tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun
- one drop
- Prefers all types, well drained soils.
', scientific_name: 'Corymbia citriodora')
CurrentPlant.create(name: 'Lillypilly', common_name: 'Lillypilly, Lilly-pilly', family: 'MYRTACEAE', description: 'Attractive, reliable, ever-green tree with glossy green leaves displaying pink-purple fruits in abundance in winter. Fruit may be very messy on pathways.', synonym: 'Eugenia smithii', subspecies: '', location_name: 'Geology Museum, Myers St', general_info: 'Usually found living in deep protected gullies. Adapts to a wide variety of soil types (prefering humus rich / composted soil) so long as there is sufficient moisture available. Will withstand temporary inundation (for up to a week after rain).', additional_info: 'smithii commemorating Sir James Edward Smith (1759-1828) a famous English botanical author.
Naturally distributed on the eastern side of Australia, from Cape Howe to Cape York.', identification: 'Bushy tree with a medium domed crown on a single trunk, becoming slightly buttressed when old. Note that the habit is tall in deep gullies, smaller in the open.
Leaves are simple, opposite, narrowly elliptical or ovate 5-8cm long by 2-4cm wide, dark green above, light green below; petiole 4-5mm, apex acuminate; base cuneate; margin entire but often undulate; glabrous and coriaceous. Upper and lower surface is heavily glandular (aromatic when crushed). New growth is crimson, pink copper or bronze, and very attractive. Inflorescence is a trichotomous panicle (small spray) borne terminally on short leafy shoots or 9-10cm from the upper axils, flowers are held clear of the leaves, calyx tube is obconical, the 4 sepals often of unequal size, petals 4 (white), formed into a cap-like deciduous calyptra, stamens are numerous 3-5mm long (pinkish white). Fruit is a globular (rounded) fleshy white to pale mauve-purple berry 1.5-2.0cm wide, usually slightly flattened and slightly irregularly shaped, the apex is marked by a small round depression 5-8mm across and 1mm deep (representing the persisent rim of the calyx). Fruits are borne singly or in 2-4 clusters in winter.', physical:'- Attractive, glossy, bushy, aromatic, dark green foliage.
- Showing small, white, fluffy flowers. Flowers during September - January [spring].
- Small, 1.5 - 2.0cm wide, pink fruit are displayed during May - August [winter]. Fruits are fleshy rounded berry. Fruiting bodies are profuse in their abundance.
- fruit edible
- fruit messy', horticulture: '- If grown in sandy soil it benefits from the addition of organic matter (leaf litter, compost)(do not burn leaf litter). If variegated, and green branches appear these need to be cut back or else they will take over.
- minimal - if to be grown as a tree, lateral branches on the trunk need to be pruned until the desired height (generally 2m) is attained. The crown can then develop normally. If kept as a shrub or hedge pruning of outer branches in late winter is desirable in the first year or two to develop a dense canopy. Obviously hedges requiring regular yearly pruning to maintain their shape. 
- cutting - cultivars can be propagated by grafting (apical) onto 1-2 year old understocks of the parent species in in late winter or spring
- seed - generally propagated in this manner. Seed germinating readily if collected in winter once fruit is ripe. Clean the pulp away from the seed and sow into a peat mix, keeping the specimen in a warm, humid environment.
- insect attack - not usually prone to attack by pests, however it may suffer from scale and the bright pink pimple gall. 
- readily available. A popular tree regularly cultivated (reliable). A. smithii var. minor is a more compact form (to 7m tall) with smaller leaves. Variegated forms exist. \'Elizabeth Isaac\' (syn. A.s.\'Variegata\') is a small form with silver-cream leaf margins, new growth is salmon-pink.', architectural_uses: '- coastal plant - secondary
- drain clogger
- fence screener
- freeway sites
- hedge
- ornamental plant
- potted specimen
- shade tree
- windbreak', culture: 'Fruit is edible and when ripe (bright pink in colour) it can be eaten raw or cooked into a jam / chutney.', conservation: '', wildlife: 'Attracts:
birds, seed-eaters 
colourful fruit attracts a variety of birds', architectural_info: 'This long lived tree is often used in parks and large gardens as a feature tree. It blends well with exotics and tolerate the extra summer watering required by many exotics. It may be trimmed to form an attractive hedge if planted at high densities. Is a \'fire retarder\'. Can be a bonsai specimen.', characteristics: 'handsome, stout, single trunked, tree 6 - 12m. With a dense canopy.', environment: '- full sun
- partial shade  
- may require summer watering.
- Prefers loam, well drained soils.
- Frost Tolerant', scientific_name: 'Acmena smithii')
CurrentPlant.create(name: 'Liquidamber', common_name: 'Liquidamber, Sweetgum', family: 'HAMAMELIDACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Liquidamber refers to the bright autumn foliage', identification: '5-pointed leaves.', physical:'Attractive, 5 pointed leaves, green foliage.
', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Large tree to 25 m, tree > 12m.', environment: '- full sun
- partial shade
- water during establishment and may require summer watering.', scientific_name: 'Liquidamber styraciflua (incomplete)')
CurrentPlant.create(name: 'London Plane tree', common_name: 'London Plane tree, Plane tree', family: 'PLATANACEAE', description: 'Tall stately tree with decorative bark and bright green foliage.', synonym: 'P. x hybrida', subspecies: '', location_name: 'Art Gallery carpark and Arts carpark', general_info: 'Suitable for all soil types. Grows in a range of conditions. Tolerant of smoke and polluted atmosperic conditions i.e. city scapes.', additional_info: 'Plantanus = Greek name for the Oriental plane tree acerifolia = leaves shaped like the leaves of Acer (maple tree) The first trees may have been from Spain in 1650 - a cross between P. orientalis (Oriental Plane) and P. occidentalis (Ameican Sycamore). First planted in England in Ely and Barnes in 1680 and they are still there. Feature of London\'s squares and gardens and therefore known as London Planes.', identification: 'Leaves have 5 pointed lobes (three prominent lpointed lobes and two outer, minor, notched lobes). Lobes are cut less than half way to centre (less deeply lobed than P. orientalis). Also distinguished by the fruit balls hanging from shoots in autumn. The flakey bark is cream with patches of older, darker bark.', physical:'- Attractive, 5 pointed lobed leaves, notched 25 cm, green foliage.
- Showing a minimal display of green flowers.
- Medium, 3-4 cmcm wide, green fruit are displayed during March - May [autumn]. Fruits are spikey balls hanging on stalks. Fruiting bodies are moderate in their abundance.
- Attractive trunks are a feature. Trunks have scarcely tapered boles. Trunks are flakey with new cream bark having patches of older darker-coloured, grey or brown bark., noted for its attrative trunk.', horticulture: '- Leaves deciduous and can break down easily. Fruit balls may be a problem on footpaths but they also break down readily.
- low maintenance required.
- readily available.', architectural_uses: 'shade tree
street tree', culture: 'Extensively planted in London streetscapes, parks and large gardens. Tends to impart grandeur. Commonly planted in Perth and other Australian cities. One of the oldest stands in Perth is by Kennedy Fountain, Mounts Bay Rd (opposite the Old Swan Brewery).', conservation: '', wildlife: 'Attracts:
- birds, seed-eaters - Little Corellas love the fruit balls and rip them off the trees, presumably to get at the seeds.', architectural_info: 'Tall stately tree with decorative bark and bright green foliage. Suitable for wide streets, promenades, carparks, large parks. Tends to impart grandeur.', characteristics: 'Tall stately tree, Up to 20 m, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- one drop
- Prefers all types soils, with a neutral to acidic pH.
- Frost Tolerant', scientific_name: 'Plantanus x acerfolia')
CurrentPlant.create(name: 'macadamia', common_name: 'macadamia, Queensland Nut, Bopple Nut', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: 'Tropical Grove - behind Stewart seat', general_info: '', additional_info: 'Inf from ABC Gardening Australia \'Flora\' Encyclopaedia Botanica', identification: '3-leafed whorls, glossy sessile leaves', physical:'- Attractive, irritating, undulating, serrate margins in 3s. sessile, dark green foliage.
- Showing a minimal display of medium, 10-20cmcm wide, white, pendulous racemes flowers. Flowers during August - October.
- 2.5cmcm wide, green fruit are displayed during March, April. Fruits are globular. Fruiting bodies are moderate in their abundance.
fruit edible
- Medium, 2cmcm wide, brown, hard to crack but yummy seeds are seen during April, May.', horticulture: '- Plants grown from seed take ~ 6 years to fruit', architectural_uses: 'shade tree
', culture: 'The only native species cultivated for commercial production [of edible nuts]', conservation: '', wildlife: '', architectural_info: 'Compact, glossy-leafed shade tree. Fallen nuts a possible hazard for pedestrians.', characteristics: 'tree 6 - 12m. With a dense canopy.', environment: '- full sun  
- three drop - may require summer watering.
- Prefers well drained soils.', scientific_name: 'Macadamia tetraphylla (incomplete)')
CurrentPlant.create(name: 'Maidenhair tree
', common_name: 'Maidenhair tree
', family: 'GINKGOACEAE', description: 'Grown for its attractive autumn foliage (turning yellow and falling).', synonym: 'Salisburia adiantifolia', subspecies: '', location_name: 'Great Court', general_info: 'tolerates a wide range of environmental conditions from arid to wet climates. Requires deep fertile, moist soil. Previously growing on mostly alluvial soil.', additional_info: 'biloba is derived from Latin and means \'leaves with 2 lobes\', a distinguishing feature of this tree.
Native to Europe, Asia, Australia and America

extinct in the wild
', identification: 'Dioecious tree with arching lower branches. Leaves are fan shaped (similar to maidenhair fern but larger), 2 lobed (blade 7-8cm long x 10-11cm wide, notch 1-4cm deep dividing the leaf into 2 nearly equal parts, the upper margin is irregularly sinuate), bright green (yellow green when young deeping in summer, becoming yellow - golden in autumn), venation is fine nearly parallel radiating from the petiole to the apex, softly coriaceous, petiole slender 7-10cm long. Leaves are simple in 3 to 5 leaved fascicles at the end of laterals. Leaves turn yellow in autumn and fall from the tree (deciduous). Flowers are small, inconspicuous (generally smothered by newly opening leaves in spring), yellow, borne in spring. Male flowers have green stamens on slender drooping catkin 2-3cm long. Female flowers are in pairs (one matures the other aborts). Fruit (produced on female trees) is a drupe (2-3cm long) resembling a plum. Pale-green ripening to orange-yellow in autumn. Fruit and seed are known to have an unpleasant odour. One seed per fruit, seed is an ovoid nut 2cm long, edible.', physical:'- Fan shaped, green foliage.
- Showing a inconspicuous display of small, yellow flowers. Flowers during September - November [spring].
 - Medium, 2 - 3cm wide, yellow fruit are displayed during March - May [autumn]. Fruits are plum-like. Fruiting bodies are moderate in their abundance.
fruit messy
- Medium, 2cm wide, ovoid nut seeds are seen during April, May.
Seed edible
- Young bark on branchlets is brown (fine shredding bark with large ovoid scaly buds). Older bark is coarse, slightly corky (with large transverse lenticels).', horticulture: '- Grows quick quickly when young, slowing with age
- Female plants are not popular due to the unpleasant odour produced by fallen fruit.
- low maintenance required. Frost tolerant to -10 degrees C. Best when sheltered from strong winds.
- minimal - early pruning to remove wayward laterals or competing leaders is necessary to maintain a single trunk. Pruning later is minimal, this tree is best left to develop its own shape.
- cutting - To assure male plants are kept (females not popular due to their foul smelling fruit) grafting should be done from other male specimens. Graft by top-cleft or whip-and-tongue methods on 1, 2 year old specimens in winter.
- seed - seed germinates readily. Should be collected when ripe, pulp removed and sown immediately into a friable media. Keep in a warm, humid environment.
- readily available. widely cultivated, cultivars are as follows;
\'Fastigiata\' - slender erect form 10-12m tall, similar habit to a young Lombardy Poplar.
\'Laciniata\' - conical habit, leaves are deeply cut along the upper margin.
\'Pendula\' - drooping habit with long pendulous branchlets.', architectural_uses: 'freeway sites
ornamental plant', culture: 'Note that while many western countries find the fallen fruit unpleasant, female trees are commercially cultivated in China where the edible seed is considered a delicacy.
Valued for its timber.', conservation: 'extinct in the wild', wildlife: '', architectural_info: '', characteristics: '', environment: '- partial shade
- Frost Tolerant
', scientific_name: 'Ginkgo biloba')
CurrentPlant.create(name: 'Manzdevillia Aloha Bright Pink', common_name: 'Manzdevillia Aloha Bright Pink, photo 1', family: '', description: 'Long flowering vine, large blooms. Flowers Spring, summer & autumn. Large trumpet shaped flowers , pink & white forms available.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Requires watering. Prune to shape.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Part to full sun', scientific_name: 'Mandevilla')
CurrentPlant.create(name: 'Marri', common_name: 'Marri, Red gum', family: 'MYRTACEAE', description: 'fast growing, profuse summer - autumn flowering , medium to large tree.', synonym: 'Eucalyptus calophylla', subspecies: '', location_name: 'James Oval', general_info: ': Marri favours lighter somewhat sandy soils, thereby accounting for its prevalence on the coastal plain (as it is found growing in localised patches of forest). However it seems to prefer better class (more fertile) well-drained soils, as it is found combining with jarrah and yarri in the forests on the Darling Range. Marri is absent from the Wandoo forests and hence we can assume it doesn\'t favour heavy-clay soils. It is generally found in the higher rainfall areas.', additional_info: 'The specific name \'calophylla\', Greek for \'with beautiful leaves\', relating to its foliage and to its similar nature to the tropical plant genus Calophyllum. Named first by Robert Brown who was the botanist accomanying the Flinders in 1801-1802. Note however that Brown did not validly publish the name and it was later described by John Lindley in 1841 (by the collection). 
Collected in 1839 at Augusta by Georgiana Molloy, a pioneer settler, who collected local species and sent pressings to England for classification and further study. 
The common name of Red gum, referring to the grouping of C. calophylla with the \'bloodwoods\', which exude dark red gum. Red gum being the common name used by early settlers (1838), but the Swan River Aborigines called it N\'gumbat. Other Aboriginal names included Kurden, or Karden and Marri or Marree. C.E. Lane-Poole (a former Conservator of Forests) advocated the use of Marri as the common name to minimise confusion with Red Gum or E. camaldulensis, or River Red Gum of Victoria and South Australia. 
Native range extending from Port Gregory near the Murchison River to Cape Riche, westward and southward to the coast and inland just beyond the limits of the Jarrah zone, reaching Tincurrin.', identification: 'Leaves are smooth, green to dark-green above, pale below, viens are at 50-70 degrees to the midrib and densely packed. Juvenile leaves are ovate-lanceolate, mature leaves are broadly lanceolate, mostly straight, 10-12cm long and 2.5-4.5cm wide, petiole 2cm. Flowers, creamy-white, are held in branching stems above the foliage. Flowers are terminal, corymbose panicle to 12cm across, consisting of umbels of about 5-7 flowers (some naturallay occurring forms flower pale pink). Club-shaped buds (to 1.3cm long) on long slender stems have small rounded bud caps often with a blunt point. Easily identified by the large clusters of fruits (often referred to as \'honkey nuts\') which weigh down the branches after flowering. Fruit is a woody urn-shaped capsule to 4cm long and as wide, reducing to 2cm across the prominently raised rim (constricted neck), the valves are deeply sunken. Seed from the nuts is larger than any other eucalypt and is not retained in the fruit capsule but is shed. 
Note it can be easily distinguished from jarrah E. marginata which has long fissured bark, as opposed to its blocky rough bark. The conspicuous terminal clusters of flowers and fruits of C. calophylla are typical of the bloodwoods, a primitive group of what used to be called eucalypts. Their leaves have distinctive parallel viens (nearly at right angles with the midrib) and are held with the upper-side up not edge-up as in most eucalypts. The only other bloodwood on the coastal plain, which has these features is Eucalyptus haematoxylon, which is smaller tree to 10m. When not in flower is can also be confused with \'red-flowering gum\' E. ficifolia and \'mountain gum\' E. haematoxylon. It can be easily distinguished from \'red-flowering gum\' which has a smaller form, reddish-brown bark, denser canopy, darker green leaves, smaller and more rounded fruits, brown winged seed and earlier flowering time. Further it is easy to confirm the identity by holding a leaf towards the sun, and examining it for oil glands. If none are seen then you have identified C. ficifolia, if oil glands are present then you have either C. calophylla or E. haematoxylon. \'Mountain gum\' being a smaller more crooked tree with brown to red-brown seed. 
Abundant in the lower South West, it is less common north of Perth often confined to river valleys. Though its natural range does extend to the Murchison River.', physical:'- Broad, glossy, dark green foliage.
- Showing a profuse display of up to 5cm wide, white, large clusters flowers. Flowers during January - May [autumn].
used for cut flowers or floral art
- Large, 3-4cm wide, gray fruit. Fruits are thick, woody, urn shaped. Fruiting bodies are moderate in their abundance.
- Medium, 1-2cm wide, black, boat-shaped seeds are seen all year round.
- Blocky, square, rough and flaky, grey to grey-brown bark persisting to the upper branches. Upper twigs thick, redish. Gum (reddish-brown) is often exuded from the trunk and branches. The timber is straight-grained, light brown.', horticulture: '- The large seeds produce robust seedlings with very good survival rates. Together with quick growth, this makes it a very popular widely cultivated tree. Fruits take a year to mature, then seed is shed over 12-18 months. Develops best when given space to spread its roots and branches.
- low maintenance required. It prefers moderately fertile and well drained soils, though it will grow in most soils and tolerate large amounts of shading. It frost tender tolerating only light frosts. Tolerant of Phytopthora cinnamomi. 
- seed - Seed can be collected year round, with establishment best from seedlings.
- readily available. Cultivated form often with a short trunk and dense conical crown (not as large as in native habitat). A beautiful mid to late summer, pink flowering form, var. hawkeyi is available from most nurseries.', architectural_uses: 'coastal plant - secondary
freeway sites
ornamental plant
reduces erosion - soil binder
shade tree
street tree
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
- birds, honey-eaters - The abundant nectar and pollen attracts purple-crowned lorikeets, silvereyes, red and little wattlebirds and brown and New Holland honeyeaters.
- birds, seed-eaters - Ringneck and red-capped parrots chew on the soft immature fruit. When the fruit is fully developed, the ringneck parrot chews off and eats the fleshy outside part. The seeds form an important part of the diet for; the Baudin\'s black cockatoo, Carnaby\'s black cockatoo and various parrots. The red-capped parrot\'s beak has adapted to extract seed from the large fruit, with its distribution largely matching that of the marri. It nips off the fruit, sticking in its long upper mandible, while revolving the capsule to pick out the seed. This technique of seed extraction leaves a tell-tale circle of imprints (caused by the mandible) just below the neck of the fruit.
- butterflys - Western brown butterflys are attracted to the gum exuded from the bark (caused by insect damage) during autumn.
- insects - Nectar and pollen attracting bees, wasps, ants, beetles and moths', architectural_info: 'Interesting fruit. Habit often producing a picturesque park like appearance.', characteristics: 'round-headed, wiggly branched, wide-spreading, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Corymbia calophylla')
CurrentPlant.create(name: 'Menzies\' banksia', common_name: 'Menzies\' banksia, firewood banksia', family: 'PROTEACEAE', description: 'Beautiful pink-redish floral-spikes', synonym: '', subspecies: '', location_name: 'shenton park bushland', general_info: 'Being found on the deep sandy soils of the coastal plain in low woodland and tall shrubland. Annual rainfall of 350-900mm, being able to tolerate dry conditions. Note, only moderately frost resistant.', additional_info: 'Named after Archibald Menzies, surgeon-naturalist on the Discovery expedition (1791-95) under George Vancouver, in which King George Sound was discovered in 1791. 
Collected by Charles Fraser, the superintendent of the Sydney Botanic Gardens, in 1827 near the Swan River, Western Australia. Fraser accompanying James Stirling to the Swan River prior to settlement. 
B. menziesii ranges from the Murchison River, east into pockets of the northern Wheatbelt (on sandy soils), extending south to Pinjarra.', identification: 'Leaves scattered, oblong, truncate, 8-24 x 1-4cm, shortly petiolate, with the margins faintly and often irregularly toothed. Lateral veins arranged transversely to the stout, yellow-white midrib. Leaves dull dark green, pale below, sometimes glaucous; new growth is an attractive pale brown, produced in December and January (just before flowering). Branchlets covered with hair (heavily pubescent). Flower-spike are terminal, ovoid-cylindrical (being more rounded than cylindrical, cylindrical floral-spikes being found on the majority of banksias), 4-12 x 7-8cm wide at flowering. Flowers are pink and silver before opening, and orange and pink when open. The lowest flowers on the spike opening first producing an \'acorn\' of orange (lower part) and pink (upper part). Some specimens having yellow flowers, prior to and post opening. Old flowers falling early. Fruit or cone tapered to the apex producing up to 25 follicles, fertilised follicles are conspicuous and large 2.5-3.5 x 1-1.5cm, beak-like, often giving a bulging appearance. Follicles covered with hair, gaping widely after the release of the seed. 
Together with B. attenuata, B. menziesii is one of the commonest banksias on Perth\'s coastal plain. These two species being commonly found together. 
Distinguished from B. prionotes by its crookedness, its pink and orange flower-spikes and its less deeply divided or toothed leaves.', physical:'- Narrow, faintly and irregularly toothed, dark green foliage.
- Showing a moderate display of large, 4-12cm wide, pink, conspicuous, ovoid to cylindrical flowers. Flowers during February - September [autumn, winter].
used for cut flowers or floral art
- Large, 4-12cm wide fruit. Fruits are bulging, beaked, mottled. Fruiting bodies are moderate in their abundance.
- Large, 2-3cm wide, obovate, winged seeds are seen all year round. Seed is profuse in its abundance.
- thick, warty, often crumbling, greyish-pink or pale brown', horticulture: '- An attractive species with both tree and shrub forms, often irregular. Slow-growing taking 6-10 years to flower from seed. Dwarf form from Eneabba flowers well at 1m, and may reach 2m with a compact habit. Yellow forms of B. menziesii are known. 
- low maintenance required. may require early pruning to shape the crown 
- minimal - though can withstand hard pruning
- seed - established best from seedlings. Average strike rate from propagule 67%. No available data on time taken from propagation to field ready, or establishment success rates. 
- fungal attack - brown colouring and blistering, caused by a rust-fungus is often seen on the leaves
- insect attack - larvae of weevils and moths burrowing to the fruit / cone and flower-spikes respectively 
- not readily available. not commonly cultivated, dwarf form performing well near Millicent, South Australia. Though it is generally difficult to grow in the eastern States, and a limestone underlay technique is adviced.', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen
windbreak', culture: '', conservation: 'B. menziesii is one of the commonest banksias found on the Swan coastal plain and is nearly always found growing with B. attenuata. One of the two is almost always in flower, B. menziesii flowering from late summer or autumn to early spring, B. attenuata flowering from mid-spring to early autumn. It is thought that such respective flowering periods possibly evolved so that the two species would not have to compete for pollinators. Such flowering times also benefits \'purely nectar\' feeding fauna, whose year-round supply of nectar is thus provided. It can be noted however that brief periods in autumn and spring may exist when neither banksia is flowering or flowering is at a minimum, during these times B. prionotes and B. illicifolia are flowering (respectively). 
No species is closely resembles B. menziesii, the nearest relative being B. speciosa from the south coast of Western Australia which has long deeply divided, triangular lobes and pale yellow flowers with large, unmottled follicles and persisting flowers. 
B. menziesii is fire-tolerant, sprouting from the trunk or lignotuber', wildlife: 'Attracts:
- birds, honey-eaters - such as the western spinebill, the red and little wattlebirds and the singing brown and New Holland honeyeaters drink the nectar during its long flowering period.
- birds, seed-eaters 
- butterflys - the larvae of a moth burrows into the flower-spikes
- insects - the fruit or cones are used by the burrowing larvae of two species of weevil', architectural_info: 'Beautiful richly coloured flower-spikes, from silver-grey to pink to orange, contrasting well with the grey-ish green leaves. Can be grown as a bonsai specimen.', characteristics: 'often crooked, gnarled, open, spreading, tree 6 - 12m. With a open canopy.', environment: '- full sun  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant  
- Wind Tolerant', scientific_name: 'Banksia menziesii')
CurrentPlant.create(name: 'Moreton Bay Fig', common_name: 'Moreton Bay Fig, Fig', family: 'MORACEAE', description: 'massive, nobel tree - should only be planted in large parks or gardens. This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'Central Walkway, south of Student Admin', general_info: 'naturally growing in high rainfall areas on sandy fertile soils (fringes of forests), will tolerate most soils. Will tolerate temporary inundation.', additional_info: 'macrophylla being Greek for \'with large leaves\', and refers to the large lustrous leaves of this plant.
These plants are commonly known as \'Figs\' as their fruits resemble that of the edible fig.

Extending along the coastal strip from Jervis Bay to Cape York Peninsul', identification: 'Leaves are dark green and shiny above with a paler green to rusty colour beneath, simple, alternate, ovate-elliptic (15-25cm long x 6-10cm wide), glabrous, apex aucte or shortly acuminate. Petiole stout 5-10vm long. Leaf is channelled above. Upper branchlest are dull green, covered in pale brown lenticels, undulate circular ridges and semi-circular leaf-scars. Figs are ovoid-globose (up to 2.5cm in diameter) on long peduncles (2cm long, 5mm wide) green with green spots ripening in October - November to reddish-purple colour with yellowish red spots. Pulp is pale brown.
May develop hanging aerial roots.', physical:'- Attractive, large, shiny, dark green foliage.
- Showing a inconspicuous display of flowers.
- Medium, 2.5cm wide, red fruit are displayed during October, November. Fruits are fig. Fruiting bodies are moderate in their abundance.
fruit edible
fruit messy
- Trunk is massive and buttressed, with flanged surface roots. May develop hanging aerial roots., noted for its attrative trunk.', horticulture: '- Specimens can cause havoc in suburban gardens, with their extensive root systems damaging drain, upsetting the foundations of houses and swimming pools. Planting out overgrown potted specimens is therefore not advisable. (many people underestimate the size of figs). Best to repot when roots are very cramped, note that figs prefer situations where their roots are overcrowded. 
- low maintenance required. will only grow in low frost regions (frost tender), preferring climates with a minimum of 8 degrees C. Potted specimens are best if foliage is wiped with a damp cloth.
- minimal - Pruning is minimal with initial pruning necessary only in the first year or so to establish a single trunk 
- seed - grow from fresh seeds (sown when initially ripe) sown in a friable mixture and kept in a warm humid environment.
- don\'t over water - Containerised house plants may lose foliage from over-watering.
- fungal attack - Fungi may also cause some leaf damage.
- insect attack - Susceptible to attack from Lerps, red-spider mite and fig-beetles, which may defoliate specimens.', architectural_uses: 'coastal plant - secondary
drain clogger
indoor plant
ornamental plant
potted specimen
shade tree', culture: 'fruits are edible when dark purple (not commonly consumed due to their less palatable nature when compared with other Fig species)', conservation: '', wildlife: 'Attracts:
- birds, seed-eaters  - fig are eaten by lorikeets and native pigeons
- butterflys', architectural_info: 'This large tree can cause havoc in suburban gardens.
Suitable as an indoor plant only when young.

This native blends well with exotics.

Fodder plant (fed to sheep and cattle when feed is scarce), farm shelter tree.', characteristics: 'massive trunked, wide-spreading, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade
- Prefers well drained soils.
- Salt Tolerant', scientific_name: 'Ficus macrophylla')
CurrentPlant.create(name: 'Moroccan glory vine', common_name: 'Moroccan glory vine, Bindweed', family: 'CONVOLVULACEAE', description: 'attractive mauve-blue flowers are produced from spring to autumn', synonym: 'C. mauritanicus', subspecies: '', location_name: 'Sunken garden', general_info: '', additional_info: '', identification: 'Slender stemmed. Leaves are small and oval shaped. Trumpet-shaped flowers are blue-purple , borne from spring to autumn.', physical:'- Small oval, green foliage.
- Showing a profuse display of medium, blue, trumpet-shaped, mauve - flowers. Flowers during September - May [spring, summer, autumn].', horticulture: '- best for profuse floral displays are produced when the plant receives full sun
- low maintenance required. withstanding temperatures to 0 degrees C.
- prune after flowering - Pruning is minimal, consisting of removal of flower heads to prolong flowering.
- cutting - propagate from softwood cuttings in late spring or summer
- readily available.', architectural_uses: '- basket plant
- groundcover
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'groundcover - which does not handle traffic.', characteristics: 'trailing, Perennial herbaceous shrub < 1m.', environment: '- full sun
- Prefers well drained soils.
', scientific_name: 'Convolvulus sabatius')
CurrentPlant.create(name: 'Mottlecah', common_name: 'Mottlecah, Blue Bush, Rose of the West', family: 'MYRTACEAE', description: 'E. macrocarpa macrocarpa is the southern subspecies with larger leaves. E. macrocarpa elachantha has smaller leaves andis restricted to an area southeast of Geraldton, WA. The essence of E. macrocarpa apparently brings enthusiasm, inner strength and endurance. (Essences http://www.ausflowers.com.au/essence.html) E. macrocarpa contains macrocarpal A which is believed to be antibacterial (Cornell University http://www.ansci.cornell.edu/plants/medicinal/eucalypt.html)', synonym: '', subspecies: 'macrocarpa', location_name: 'Kings Park & Botanic Gardens', general_info: '', additional_info: 'Eucalyptus from greek eu\'eu\' = well, \'calyptos\' = covered. refers to the flower buds having an operculum or cap. macrocarpa means large fruit. Student Portfolio 2004: Emma Carroll', identification: 'Straggly mallee tree with large oval grey-green leaves. Large red flowers with golden tipped stamens. Large brown attractive fruit which are held on the tree.', physical:'- Attractive, oval, silver foliage.
- Showing a moderate display of large, 10 cmcm wide, red, large bright red to pink flowers with gold tipped flowers. Flowers during September - December [spring].
- Large, 10 cmcm wide, gray fruit. Fruiting bodies are moderate in their abundance.
- brown seeds. Seed is inconspicuous in its abundance.
- Smooth grey to llight brown, noted for its attrative trunk.', horticulture: '- low maintenance required. Slow growing
- don\'t over water - Susceptible to blackening of leaves or death from waterlogging 
-readily available. Grown in a number of countries including California, USA', architectural_uses: 'drought resistant
freeway sites
ornamental plant', culture: '', conservation: '', wildlife: 'Flower has large amounts of nectar and attracts honey-eaters and insects which attract insect-eating birds
', architectural_info: 'Stunning floral display, interesting foliage', characteristics: 'Spreading, 3-12m, tree < 6m. With a open canopy.
', environment: '- full sun   
- one drop
- Prefers sand, well drained soils, with a neutral to acidic pH.
- Frost Tolerant
- Wind Tolerant
- Salt Tolerant', scientific_name: 'Eucalyptus macrocarpa')
CurrentPlant.create(name: 'Mulga', common_name: 'Mulga, Yarran, Broad-leaf mulga, Wintamara', family: 'MIMOSACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Predominantly found in arid to semi-arid areas, 150 - 250mm annual rainfall (preferring hot and dry conditions). Will tolerate a wide range of soils including clay. Preferring sands and loams.', additional_info: 'aneura Greek for \'without nerves\', a term to describe the indistinct venation pattern on the phyllodes (seemingly nerveless).
Mulga is a common Aboriginal name (inland regional communities) used to describe a \'long thin wooden shield\' which is made from this plant. Wintamara being the name used by Aborigines in the Ashburton area (the Ashburton being a large river in the Pilbara)

Widely distributed in the dry inland regions of Australia (predominantly the 250-300mm rainfall zone). Ranging from near Shark bay (Western Australia) to within a few hundred kilometres of the Queensland coast, to the western plains of New South Wales.', identification: 'Multibranched trunk is often twisted with branches ascending obliquely (slant-wise), branchlets are angular. Phyllodes are thick, leathery, narrow grey-green or blue-grey (ranging from more needle like dimensions of 2-17cm(to 25cm) x 2-8mm to being more flatish with a width of 2cm, often falcate, sometimes strongly recurved, the leaf tip (apex) with a hard hooked point, indistinct venation (faint parallel nerves obscured by covering of short dense hairs), marginal gland indistinct or absent, margins usually lighter, small basal gland. Foliage is carried in a semi-horizontal manner due to the branching pattern of the tree. Inflorescence is a short slender axillary spike 2-3cm long on a short silver-scalely (scurfy) stalk (3-8mm long), usually single, several together forming an erect raceme, flowers bright golden-yellow. Flowering is variable ranging from April to July - August, mostly in August, though occurring frequently after sufficient rain (flower and seed production being profuse if rainfall is substantial). Fruit is a light brown seed pod or legume 2-5cm long x 0.7-1.4cm wide, flat with winged margins (as wide as 2mm), covered in soft fine hairs, with 3 or 4 seeds. Pod covered with raised net-like viens, occassionally sticky, narrow at base with a blunt tip. Seeds are rounded, hard, shiny dark brown (5mm x 3-4mm), oblique or transverse in pod, thin seed stalk is short with 2 or 3 folds.
Distinguished by its flat winged pods and narrow dull apparently veinless phyllodes.', physical:'- Thick, narrow grey-, green foliage.
- Showing 2 - 3cm wide, yellow, flower spikes flowers. Flowers during April - August [winter].
- 2 - 5cm wide, brown fruit. Fruits are seed pod, flat
- 0.5cm wide, brown, hard, oval, shiny dark seeds are seen during September - January [spring].
- Seed edible
- Brown roughly fissured bark. Branchlets are covered with dense silver hairs, young shoots are brown scaly, occassionally resinous. Timber has a beautiful grain.', horticulture: '- Longer lived than most Acacias. 
- low maintenance required. Moderately frost resistant, very lime tolerant. 
- prune after flowering 
- seed - seed can be collected from September to January, seed not being set every year, taking 10 months to mature.', architectural_uses: '- drought resistant
- reduces erosion - soil binder
- shade tree
- windbreak', culture: 'Known for its attractive dark, durable, grained timber, often used for souvenirs. Used in rural ares for fencing as well as firewood and fodder for stock.
Used by Aborigines to make spears, boomerangs and long narrow sheilds or \'mulgas\'. The seed and gum are edible. Seed is best eaten once ground (a very important constituent in the bush food diet of inland Aboriginal communities) and the gum which appears in large apricot sized juicy yellow fleshed galls after rains can be eaten whole (this gum is induced by insect attack). After substantial rainfall and profuse flowering seed production is high, transforming the bush to a more \'green\' colour (different from its predominant dull grey appearance). These \'green\' trees are sought after by the Aborigines. Pods are collected, threshed and then winnowed. It has been noted that seed is often soaked or roasted before being ground and consumed, however communities in the Ashburton region simply grind up their seed (known as \'wintamar\'), not bothering to prepare it in any way. The flour from the ground seed can be mixed into a paste and made into a damper or eaten raw. The bark can be burnt to ash and mixed with dried Isotoma petraea (rock isotome) and small amounts may be consumed to alleviate cold symptoms. Small waxy red growths (\'wama\') found on the branchlets or twigs can be collected up, crushed and mixed with water to make a sweet tea. Water is found in the roots and cavities are sometimes found in these trees.', conservation: '', wildlife: 'Attracts:
birds, insect-eaters 
birds, seed-eaters', architectural_info: 'A stock fodder tree, valuable in low rainfall areas. Firewood tree.', characteristics: 'variable, spreading, tree < 6m. With a dense canopy.', environment: '- full sun   
- one drop
- Prefers well drained soils
- Frost Tolerant', scientific_name: 'Acacia aneura')
CurrentPlant.create(name: 'Mulla mulls', common_name: 'Mulla mulls', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Pilots exaltatus')
CurrentPlant.create(name: 'Native frangipani', common_name: 'Native frangipani, Australian frangipani, Sweetshade, Wing-seed tree', family: 'PITTOSPORACEAE', description: 'attractive small slender tree, with showy white-yellow, perfumed flowers. This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'Agriculture garden', general_info: 'Naturally growing in rainforest habitats, in coastal gullies and along the fringes of forests. Likes fertile, moist, composted or humus rich soil. Tolerates temporary inudation.', additional_info: 'flavum being Latin for \'yellow\' and refers to the mature flower colour.', identification: 'This small slender tree is columnar shaped, becoming triangular with maturity. Branches are sparse and often downturned, giving this tree an attractive horizontal layered look.
Leaves are oblanceolate - elliptical (16cm long x 4-6cm wide), alternate, margin entire slightly recurved, glossy dark green above - paler beneath. Petiole is 1.5cm long. Young twigs are tomentose (covered with hair) becoming glabrous. Flowers are perfumed, white or cream when young (often variegated with red and green) darkening with age to an orange-yellow colour (3cm long x 2.5cm wide). Flowers are in loose terminal clusters (up to 25 flowers), borne in spring. Fruit is a flat woody capsule (3cm long x 2cm wide) which splits along the middle edges when ripe. Seeds are flat (5-10mm wide), dark brown, membraneous winged, closely packed in the pod, released in summer and autumn.', physical:'- Attractive, shiny, elliptical, dark green foliage.
- Showing medium, 2.5cm wide, yellow, tubular flowers. Flowers during September - November [spring].
perfumed
used for cut flowers or floral art
- Medium, 3cm wide fruit. Fruits are flat woody capsule.
- Small, 0.5 - 1cm wide, brown, membraneous winged seeds are seen during December - May [summer, autumn].', horticulture: '- Tolerant to Phytopthora cinnamomi.
- low maintenance required. best in a sheltered position (note the wood is brittle and may be snapped by strong winds). Moderately frost resistant (young plants are frost tender and require protection from frosts). Water containerised specimens freely during growth period, less at other times. Moderately lime tolerant.
- minimal - initial pruning is required to establish a single straight trunk (removing wayward branches and leaders). Tip pruning of lateral branches early on will increase its foliage density. This tree has an attractive horizontal layered look and careful pruning is required not to destroy this. 
- cutting - can be propagated from semi-ripe cuttings in summer
- seed - collect and sow ripe seed in autumn or spring, keep in a warm moist environment. Germinates readily.
- readily available. cultivated extensively in Adelaide (forming a rounded compact small tree).', architectural_uses: 'coastal plant - secondary
drain clogger
indoor plant
ornamental plant
potted specimen
shade tree
street tree', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters 
butterflys 
', architectural_info: 'Fire retarder. Bonsai specimen. This native blends well with exotics.', characteristics: 'slender, single trunked, erect, tree 6 - 12m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- tolerates full shade
- may require summer watering.
- Prefers well drained soils with a neutral to acidic pH.
- Frost Tolerant', scientific_name: 'Hymenosporum flavum')
CurrentPlant.create(name: 'Native pigface', common_name: 'Native pigface, Pigface, Stout pigface, Hottentot fig', family: 'AIZOACEAE', description: 'grown for their showy flowers, attractive succulent looking foliage and their sand binding abilities which help to reduce erosion.', synonym: '', subspecies: '', location_name: '', general_info: 'Grows naturally on sandy coastal soils.', additional_info: 'Commonly known as \'Pigface\' or \'Native / Stout Pigface\'. In South Africa the common name for Carpobrotus and Mesembryanthemum is \'Vygie\' (pronounced faycee) meaning \'little fig\' (the fruit bearing some resemblance to a fig). Australian Carpobrotus have larger flowers than their relative in South Africa and hence the name \'Big Vygie\' pronounced \'Big Facycee\' may have been altered with time to create the name of \'Pigface\'. The prefix of \'Native\' may be confusing as another species Carpobrotus edulis is also native to the south-west of Western Australia. \'Hottentot fig\' refers to the small size of the plant and the appearance of the fruit, though this common name is also used to describe Carpobrotus edulis. Aboriginal name of Kolbogo. Extending along the south-coast from near Shark Bay to the Great Australian Bight. Occuring on Rottnest, Carnac and Penguin Islands (offshore Islands near Perth).', identification: 'Old branches are white. Leaves are green or blue-green, fleshy, rigid, 3-sided (triangular in cross section) each side being slightly convex (up to 8cm long). Leaves are borne on opposite sides of the stem. Pink / purple daisy-like flower heads are up to 5cm wide. Flower head is made up of abundant petal-like staminodes which are narrow and spreading, purple becoming white at the base. Flowers are borne individually. Flowers contain up to 300 stamens, 7-10 styles, the ovary is conical (flat on top). Fruit is succulent, usually red-purple when ripe (up to 4cm long x 1.5cm wide), seeds being embedded in mucilage (thin viscous pulp). Another species Carpobrotus edulis is also native to the south-west of Western Australia. This plant has triangular leaves which are often red-tinged, the leaf sides being slightly concave. Daisy-like flowers are yellow turning pink with age.', physical:'- Fleshy, triangular, green foliage.
- Showing a profuse display of medium, 5cm wide, pink, daisy-like flowers. Flowers during August, September.
- Small, 4cm wide fruit. Fruits are succulent.
- Small seeds.', horticulture: '- Roots are developed at leaf nodes along the stems, allowing the plant to spread quickly over large areas, stabilising sand (in coastal situations) (invasive nature). 
- low maintenance required. easy to grow, moderately lime tolerant, usually frost resistant 
- cutting - in spring, summer or early autumn.
- division - dividing of layers (rooting from leaf nodes) in spring, summer or early autumn.
- seed - in spring, summer or early autumn. 
- don\'t over water
- not readily available.', architectural_uses: '- basket plant
- coastal plant - secondary
- groundcover
- reduces erosion - soil binder', culture: 'Fruit is edible raw - seeds and mucilage squeezed out. Note that fruits when are collected from lush robust plants are less salty than those living in harsh environmental conditions with little foliage. Leaves can apparently be eaten steamed or roasted. Early English settlers apparently made jam from Carpobrotus. The fleshy leaves contain large amounts of water and may have been used during exploration to sustain life. While the tissue of Australian Carpobrotus has not been studied thoroughly, it is known that related South African species contain an alkaloid drug (mesembrine) which is similar to cocaine, an can act as a weak local anaesthetic.', conservation: 'Roots are developed at leaf nodes along the stems, allowing the plant to spread quickly over large areas, stabilising sand (in coastal situations) (invasive nature).', wildlife: '', architectural_info: 'Stabiliser plant for primary or secondary sand dunes. Useful groundcover for coastal areas.', characteristics: 'prostrate, mat-forming, Perennial succulent under 15cm.', environment: '- full sun  
- one drop
- Prefers well drained soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Carpobrotus virescens')
CurrentPlant.create(name: 'Native wisteria', common_name: 'Native wisteria, Wild sarsaparilla, Native lilac', family: 'FABACEAE', description: '', synonym: '', subspecies: '', location_name: 'Taxonomic garden', general_info: 'growing naturally on sandy soils. Will grow in most soils.', additional_info: 'Extending north to Cockleshell Gully and Greenhead, south to the south-west coast and east to Albany.', identification: 'Leaves 3-5 foliolate, leaflets either narrowly ovate (3-9cm long x 0.4-1.8cm wide) or ovate (4.2-8.2cm long x1.8-3.8cm wide). Inflorescence is a pendulous raceme to 20cm long. Corolla blue to purple, rarely white, standard with a yellow-green \'eye\' (7-9mm long), wings 6-8mm long, keel 4.5-5mm long. Fruit is a 2-valved pod, dehiscent, narrowly cylindric (3-4.3 cm long x 0.7-1.1 mm wide). Seed is brown, ellipsoid (6 mm long x 3mm wide), with a pale aril (fleshy seed stalk).', physical:'- 3 or 5 - leaved, shiny, green foliage.
- Showing a profuse display of large, 20cm wide, pink, pendulous, pea-like flower spray, purple- flowers. Flowers during June - September [winter]. perfumed
- 3 - 4cm wide fruit. Fruits are narrowly elliptic pod.
- Small, 0.6cm wide, brown, ellipsoid seeds.', horticulture: '- prune after flowering - cut back unwanted branches
- seed - seed in spring (seed needs to be pre-treated, scarified).
- don\'t over water', architectural_uses: '- basket plant
- coastal plant - secondary
- groundcover
- ornamental plant
- potted specimen
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'Grown to twine around and cover columns, patio poles, fences.', characteristics: '- twining
- Perennial climber 1 - 6m with a vigorous growth rate.', environment: '- full sun
- partial shade
- one drop
- Frost Tolerant', scientific_name: 'Hardenbergia comptoniana')
CurrentPlant.create(name: 'Norfolk Island pine', common_name: 'Norfolk Island pine', family: 'ARAUCARIACEAE', description: 'beautiful stately conifer which grows to 50m tall', synonym: 'A. excelsa', subspecies: '', location_name: 'Sommerville auditorium', general_info: '', additional_info: '', identification: 'mature leaves, broadly ovate to 7mm long, overlap encircling the branches.', physical:'Attractive, pointed leaves, dark green foliage.', horticulture: '- Low maintenance required
- Readily available', architectural_uses: '- Coastal plant - primary
- Indoor plant
- Ornamental plant
- Potted specimen
- Shade tree', culture: '', conservation: '', wildlife: '', architectural_info: 'potted specimen and indoor plant only when young.', characteristics: '- Stately
- Conical
- Conifer > 12m', environment: '- Full sun', scientific_name: 'Araucaria heterophylla')
CurrentPlant.create(name: 'NSW Christmas Tree', common_name: 'NSW Christmas Tree', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Ceratoptalum gummiferum')
CurrentPlant.create(name: 'Old mans beard', common_name: 'Old mans beard, Small-leaved clematis', family: 'RANUNCULACEAE', description: 'attractive creeper with a profuse display of white star-shaped flowers in late winter to early spring.', synonym: '', subspecies: '', location_name: '', general_info: 'Growing naturally on near-coastal and limestone sands. like humus-rich, moisture retentive soil', additional_info: 'In Western Australia it extends from Kalbarri and Dirk Hartog Island, south to Cape Naturaliste, Esperance and Israelite Bay.', identification: 'Small narrow leaves are to 3cm long, sparse. Small cream star-shaped flowers (2.5cm wide) with 4 petal-like sepals are borne profusely in late winter to early spring (flowers are borne on the previous seasons ripened shoots). After flowering fluffy seed heads remain for a few months.', physical:'- Small, narrow, green foliage.
- Showing a profuse display of small, 2.5cm wide, white, star-shaped flowers. Flowers during July - November [spring].
- White, fluffy seed head seeds are seen during November, December. Seed is profuse in its abundance.', horticulture: '- prefers a north facing wall - plant on the shady side to allow the roots to be protected and stay cool, the creeper will grow into the sun. If fails to grow likely to be in the wrong position. 
- prune after flowering - Pruning should be regular. With removal of old twiggy growth.
- cutting - Semi-ripe or soft wood cuttings should be taken at leaf nodes in early summer.
- fungal attack - Clematis may suffer attack from mildew and clematis wilt.
- insect attack - susceptible to attack from aphids', architectural_uses: '- coastal plant - secondary
- fence screener
- groundcover
- groundcover suitable with some trees or shrubs
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'attractive when mingled with other shrubs and trees (these plants are generally used to cover walls, pergolas, or a tree trunk)', characteristics: '- slender to shrubby
- twining
- Perennial climber 1 - 6m with a vigorous growth rate.
', environment: '- full sun
- partial shade
- one drop
- Prefers well drained soils with a neutral pH.
- Frost Tolerant', scientific_name: 'Clematis microphylla')
CurrentPlant.create(name: 'Old socks', common_name: 'Old socks, White Plume Grevillea', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: 'WA between lower Murchison River and Marchagee', general_info: '', additional_info: 'Whitish wing surrounding the seed , from the Greek, leucon [white]and pteron[a wing]', identification: 'dense shrub with emergent floral branches', physical:'- Attractive, winged, grey green,, pungent, light green foliage.
- Showing a profuse display of 10-15 cm conflorescencecm wide, white flowers. Flowers during September - February [spring, summer].
pungent
- 20-24 mm long ;14-15 mm widecm wide fruit.
- gray, seed pods attractive seeds.', horticulture: '', architectural_uses: 'drought resistant
fence screener', culture: '', conservation: '', wildlife: '', architectural_info: 'Ideal in parklands and large public areas. Flowers have fetid perfume at night. Tendency to wind throw,may need staking.', characteristics: 'Densely branched shrub, 2-3 m, woody shrub >2m. With a dense canopy and vigorous growth rate.', environment: 'full sun   
one drop - may require summer watering.
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Grevillea leucopteris [incomplete]')
CurrentPlant.create(name: 'One-sided bottlebrush', common_name: 'One-sided bottlebrush, Net bush, Common net bush', family: 'MYRTACEAE', description: 'showy flowers are produced for long periods. This native blends well with exotics.', synonym: '', subspecies: '', location_name: '', general_info: 'Found naturally occurring on limestone dunal soils and heavier inland soils. Prefers sandy soils, though will grow on most soil types. Tolerates temporary inundation.', additional_info: 'The common name of One-sided bottlebrush refers to the one-sided flower spikes which resemble those from genus Callistemon (known as the \'True bottlebrush\'), appearing similar in nature to the kitchen implement. This name is not very specific with many other species within the genus Calothamnus also being called this.
Extending from Shark Bay to Israelite Bay, inland to Norseman.', identification: 'Leaves are greyish to deep green, pine-like (cylindrical or slightly flattened), to 3cm long (may be covered with fine hairs - giving it a furry appearance) crowded along the stem. Inflorescence is a dense 1-sided spike generally 3-4cm (upto 10cm) long, flowers mostly red ocassionally cream-yellow. Flowers are staminal, claw-like bundles up to 2.5cm long with 15 or more filaments, style is red - 3cm long. Flowers 4 merous. Flowers can be displayed from Spring - Summer to Autumn, mostly blooming in late Spring and Summer. Fruit is a persistant woody capsule 7-9mm long, broadest at the centre, generally smooth with 2 prominent terminal sepals.
Variable species outside the Perth Region. Leaves may be 1.2-1.8cm long , 0.2-0.4cm wide. Staminal bundles may have up to 25 filaments, 2-2.5cm long.', physical:'- Attractive, pine-like, green foliage.
- Showing a profuse display of large, 10cm wide, red, flower spike flowers. Flowers during November - February [summer].
- Small, 0.7 - 0.9cm wide fruit are displayed all year round. Fruits are smooth woody capsule.', horticulture: '- Containerised specimens require only moderate watering during growth, less at other times.
- low maintenance required. requires minimal care and attention. Moderately lime tolerant. Usually frost tolerant.
- prune after flowering - Pruning is minimal with only light pruning required after flowering or throughout the year. To renew vigour in old bushes more severe pruning into the old wood will be tolerated. Note that the flowers are produced on the old wood.
- cutting - Half-ripened tip cuttings should be taken during summer (yellow colour forms require this method of propagation).
seed - Seed can be collected from the plant year round. The persistant fruit capsules remaining on the stems.
- Phytophthora cinnamomi (dieback)
- readily available. a prostrate form is in cultivation. This is a much-branched low spreading form, 60cm tall by 2m wide.', architectural_uses: 'coastal plant - secondary
fence screener
freeway sites
hedge
ornamental plant
potted specimen
reduces erosion - soil binder
rockery plant
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: 'This native blends well with exotics.', characteristics: 'erect, slightly spreading, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.', environment: 'full sun
partial shade   
one drop
Prefers well drained soils.
Frost Tolerant
', scientific_name: 'Calothamnus quadrifidus')
CurrentPlant.create(name: 'Orange flowered eremaea', common_name: 'Orange flowered eremaea', family: 'MYRTACEAE', description: 'attractive orange brush-like flowers, soft foliage', synonym: '', subspecies: '', location_name: '', general_info: 'growing on sandy soil on the Coastal Plain and in valleys in the Darling Scarp.', additional_info: 'Found naturally extending from Badgingarra to Ludlow, inland to Coolgardie.', identification: 'Leaves are narrow (0.8-1.7cm long x 0.5-2mm wide), hairy becoming glabrous (young shoots densely hairy, soft to touch), sometimes recurved, shortly petiolate. Flowers are terminal, bright orange, staminate, occuring either singly or in small groups on short branchlets, produced in spring. Capsule shortly cylindric (6-11mm wide), smooth, may be shiny, sessile, 3-valved (valves sunken). Fertile seed is angular, winged along the angles.
A variable species with specimens exhibiting alterations in leaf dimensions (shorter or broader leaves) and habit (taller).', physical:'- Soft, narrow, green foliage.
- Showing small, orange, brush-like flowers. Flowers during September - December [spring].
- Small fruit. Fruits are shiny, sessile.
- Small, angular, winged seeds.', horticulture: '- low maintenance required.
- regular pruning - light pruning will maintain a compact form
- cutting - Propagate easily from half-ripened tip cuttings.
- seed - Propagation is from generally easy from seed, left for 12 months to mature.
- not readily available.', architectural_uses: 'potted specimen
', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: '', characteristics: 'bushy, spreading, woody shrub 1 - 2 m.', environment: 'full sun
one drop
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Eremaea pauciflora')
CurrentPlant.create(name: 'Orange-Jessamine', common_name: 'Orange-Jessamine, Mock-orange, Satin-wood', family: 'RUTACEAE', description: 'Fragrant white blossums. Dark green glossy leaves. Flowers after heavy watering/good rains. Warning potentially weedy - It is naturalised in SE Queensland, and potentially invasive in northern Queensland.
', synonym: 'exotica', subspecies: '', location_name: '', general_info: 'Will tolerate full sun. Requires water to establish, then drought tolerant.', additional_info: 'Commemorating Dr Johann Murray, a Sweedish Botanist of the 18th century. Panicles of flowers.', identification: 'Dark green glossy leaves. Fragrant white flowers. Red berry-like fruit. Popular for wedding bouquets.', physical:'- Showing a profuse display of medium, 1 cmcm wide, white, Panicle of 10-20 flowers flowers. Flowers during January - April, October, November.
- perfumed, used for cut flowers or floral art
- Medium, 1.5-2 cmcm wide, red fruit are displayed during June - November [spring, winter]. Fruits are Berry-like. Fruiting bodies are moderate in their abundance.', horticulture: 'low maintenance required. Not frost resistant: minimum of 5C. Fast growing. generally healthy plant.
- prune after flowering - Light annual pruning required to maintain shape and dense foliage. Can shape into hedge or shapes. Can bonsai.
- readily available. Dwarf forms available (e.g. Min-A-Min grows to 1 m in 5 years)', architectural_uses: 'fence screener
hedge
ornamental plant', culture: 'Blossoms used in bridal bouquets. Some medicinal properties.', conservation: 'Warning potentially weedy - It is naturalised in SE Queensland, and potentially invasive in northern Queensland.
', wildlife: '', architectural_info: 'Useful hedge plant up tp 3 m. Large scale privacy screen. Fast growing.', characteristics: 'Dense shrub up to 3-4 m, 1.5 m, woody shrub >2m. With a vigorous growth rate.
', environment: '- full sun
- partial shade
- one drop - may require summer watering.
- Prefers all types soils, with a neutral to acidic pH.
', scientific_name: 'Murraya paniculata')
CurrentPlant.create(name: 'Parrotbush', common_name: 'Parrotbush, Boojak, Parrot bush', family: 'PROTEACEAE', description: 'Note : prickly foliage', synonym: 'Dryandra floribunda', subspecies: '', location_name: 'UWA Campus: Human Movement', general_info: 'naturally growing on limestone soils and heavy gravelly soils on the Darling Scarp and Range.', additional_info: 'The specific name sessilis means \'fit for sitting on\' in Latin and refers to the floral heads.
Collected in 1791 by A. Menzies from the west coast of Australia.

Naturally extending along the near coastal regions from Kalbarri to Bremer Bay.', identification: 'Leaves are blue green, obovate / cuneate (holly-like), toothed (2-6cm long x 1-3cm wide) with prickly lobes (generally prickly throughout or at the end). Flower heads are cream-yellow, brush-like. Displayed profusely during winter and spring.
In the metropolitan region it grows largely on the coastal limestone ridges and on the Darling Range (on the old gravelly soils, in the Jarrah forest). Note that variation of form exists within this distribution, with the coastal plants showing smaller, greener and more fan-shaped leaves (generally with less teeth).

Similar in appearance to Banksia ilicifoila (Holly-leaved banksia), distinguishable by its smaller size, leaves and flower colour.', physical:'- Attractive, irritating, holly-like, blue-, green foliage.
- Showing a profuse display of small, yellow, brush-like flowers. Flowers during June - November [spring, winter].
used for cut flowers or floral art
- Small, winged seeds.', horticulture: '- Soils should be low in nutrients (Nitrogen and Phosphorus)(no fertilising required) due to their adaptation to such soils. If leaves become yellow Iron-deficiency is likely and can be corrected by the use of iron chelates
- Problems in cultivation have been due to their susceptibility to die-back (Phytophthora cinnamomi). Therefore it is vitally important to plant on well-drained soil or a raised garden bed. Mulching around the roots or covering the soil surface with a groundcover helps to keep the soil at a constant temperature, favoured by most species.
- minimal - light pruning when young will encourage a bushy form
- seed - Seed should be sown in autumn or spring. Seedlings need to be carefully watched and checked for fungal disease (damping off) (water carefully). Seedlings not favouring excessive humidity (plants under glass need to be well ventilated).
- Phytophthora cinnamomi (dieback)', architectural_uses: 'coastal plant - secondary
fence screener
hedge
ornamental plant
potted specimen', culture: 'Parrotbush is one of the cheif honey produced for the state. It has an abundant and long-lived supply of nectar and pollen required for sustaining bee hives.', conservation: 'This dense shrub or small tree can form thickets that help to protect native fauna.
Fire kills Parrotbush, however it generally re-establishes, regenerating well from the copious seed produced after flowering. Parrotbush takes 3 - 4 years to reach reproductive maturity. Only frequent burning episodes will reduce populations (as seen on the Darling Scarp). Parrotbush colonies have decreased on the Coastal Plain, where once they used to extend onto Banksia country they are now more confined to the limestone ridges.

Parrotbush aged 8 - 16 years is highly sought after by beekeepers as these specimens produced the best flowers. Older plants have reduced productivity, being more commonly attacked by insects and fungi.', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters 
birds, nesting / perching 
singing and brown honey-eaters
birds, seed-eaters 
ringneck parrots and black cockatoos
insects 
a large array (including bees)
mammals 
quendas (bandicoots) burrow beneath the Parrotbush thickets', architectural_info: '', characteristics: 'rounded, dense, woody shrub >2m.
', environment: 'full sun
partial shade   
three drop
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Dryandra sessilis')
CurrentPlant.create(name: 'Peppermint tree', common_name: 'Peppermint tree, Willow myrtle, Wonnil, Peppermint', family: 'MYRTACEAE', description: 'Attractive weeping foliage, blends well with exotics.', synonym: '', subspecies: '', location_name: 'Sunken garden', general_info: 'Naturally found on coastal dune systems, limestone heath and sandy soils. Commonly growing as an understorey tree in tall tuart (E. gomphocephala) forests. Preferring friable organically rich soil, to improve water retention. Hardy and being able to grow in most soil types, including sandy soils.', additional_info: 'flexuosa is Latin for \'bent\' or \'full of bends\' and describes the zig-zag pattern of branches, which change direction at each leaf node. The common name of Peppermint was thought to aptly describe the fragrance of the leaves when crushed.
Naturally found from Perth (a small population slightly north in Cervantes) southward along the coast to Bremer Bay and inland to Boyup Brook.

Collected from the west coast of Australia.', identification: 'Leaves are dark green (on both sides), alternate, linear-lanceolate, slightly falcate, 10-12cm long and 6-10mm wide (juvenile leaves broader than mature leaves); distinctly petiolate - petiole 0.8-1.3cm, apex attenuate; base cuneate; margine entire; 3 main longitudinal veins; leaves covered with transparent oil glands which produce a strong scent when crushed. Foliage is dense on slender zigzag-ing twigs, often forming a rounded crown. Inflorescence is a pubescent umbellate head of 10-15 flowers in the axils of the 1 year old shoots; flowers rotate, of 5 obovate petals to 5mm long with a narrow claw at the base, being 1.5cm across, pure white with dull crimson disc; stamens roughly 20, 1.5mm long in groups of 4 or 5 on the rim of the receptacle between the petals. Flowers lightly perfumed. Fruit is a sessile aggregated cluster of 6 to 9 capsules (5-8mm wide); capsules 3 valved (3-4mm across); seed is brown, minute and numerous.
Commonly seen in the Perth area as a street tree, pruned to a \'mop-like\' appearance. Occuring in parts of Swanbourne and City Beach, along the Swan River downstream from Freshwater Bay. Unlopped, natural specimens can be seen at Blackwall Reach and Lake Claremont.', physical:'- Linear-lanceolate, aromatic, green foliage.
- Showing small, 1.5cm wide, white, sessile flowers. Flowers during August - December [spring].
perfumed
- Small, 0.5 - 0.8cm wide, gray fruit. Fruits are woody cup-shape capsule.
- Small, brown, fine seeds. Seed is profuse in its abundance.
- fissured, rough grey bark. Young shoots often silky - hairy.', horticulture: '- Adopts contorted shapes in drought stricken positions.
- low maintenance required. Moderately frost tolerant (to 0 degrees C), plants are tipped in severe winters. Lime tolerant. Tolerates Phytophthora cinnamomi.
- minimal - some early pruning may be necessary to establish a single trunk (i.e. removal of lateral branches). 
- cutting - can be grown from cuttings using striking hormone (usually grown from seed though).
- seed - capsules mature in late summer to autumn, seed can be collected by tieing a paper bag over the immature capsules, seeds being shed soon after the flower dies. Mature seed which germinates readily, should be sown in spring (keep in a warm environment). Establish via direct seeding or planting out as a seedlings. 
- insect attack - the larvae of two species of jewel bettle (including Roe\'s jewel beetle) burrow into the stems, emerging to feed on the flowers.
- slugs and snails - generally pest free, it may be attacked by webbing caterpillar
- readily available.', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
freeway sites
ornamental plant
shade tree
street tree
windbreak', culture: 'The suburb \'Peppermint Grove\' being named after this tree, with some very old specimens surviving today in Manners Hill Park and the southern end of the Esplanade. These trees have gnarled thick trunks, and many are in stages of decay.', conservation: 'May sprout from its rootstock after a hot fire, taking on a more multi-stemmed shrubby appearance (this form can be seem at City Beach).', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, nesting / perching (old trees have hollows which are used by many birds (pardalotes, ringneck parrots) for nesting.)
- birds, seed-eaters 
- mammals (hollows were also used by brushtail possums (until the early 1940s), these possums now prefering to live in the roofs of houses. South of Perth these trees and associated hollows provide the major habitat of the ringtail possum (scarce and with its populations are currently being studied).)', architectural_info: 'popular in large gardens and parks where its fine willowy foliage droops almost to the ground, a good street tree if it has room to develop. A good native to blend in with exotics. Good to plant in areas that are subjected to flowing water (river banks, eroded paddocks) as they help to minimise gully erosion control.', characteristics: 'weeping, spreading, tree 6 - 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- partial shade
- one drop - water during establishment.
- Prefers well drained soils.', scientific_name: 'Agonis flexuosa')
CurrentPlant.create(name: 'Pigface', common_name: 'Pigface, Coastal noonflower', family: 'AIZOACEAE', description: 'Grown for their showy flowers (long flowering), attractive succulent looking foliage and their sand binding abilities which help to reduce erosion.', synonym: '', subspecies: '', location_name: '', general_info: 'Grows naturally in coastal sand dunes.', additional_info: 'Commonly known as \'Pigface\'. In South Africa the common name for Carpobrotus and Mesembryanthemum is \'Vygie\' (pronounced faycee) meaning \'little fig\' (the fruit bearing some resemblance to a fig). Australian Carpobrotus have larger flowers than their relative in South Africa and hence the name \'Big Vygie\' pronounced \'Big Facycee\' may have been altered with time to create the name of \'Pigface\'.', identification: 'Leaves are fleshy, grey/bluish-green to 10cm long, triangular in cross-section. Older stems are leathery brown. Stems are not greatly seen, rooting into the soil at the leaf nodes. Flowers are daisy-like deep pink or purple with a white centre, up to 6cm wide, borne in Spring and Summer (may be seen throughout the year). Fruit is lush.', physical:'- Attractive, thick, fleshy, green foliage.
- Showing a profuse display of medium, 5 - 6cm wide, pink, daisy-like flowers. Flowers during September - February [spring, summer].', horticulture: '- Roots are developed at leaf nodes along the stems, allowing the plant to spread quickly over large areas, stabilising sand (in coastal situations).
- low maintenance required. Half-hardy- usually frost resistant.
- cutting - in spring, summer or early autumn.
- division - divide layers (re-rooting from leaf nodes), in spring, summer or early autumn.
- seed - in spring, summer or early autumn. 
- don\'t over water
- readily available.', architectural_uses: '- basket plant
- coastal plant - primary
- drought resistant
- groundcover
- potted specimen
- reduces erosion - soil binder
- trailing plant for walls', culture: 'Leaves and fruits of some species, were eaten by Aborigines and early European explorers. Seeds and mucilage being squeezed out of the fruit and eaten, leaves being boiled into jam or roasted. In addition the juice of many species has been used on burns. The fleshy leaves contain large amounts of water and may have been used during exploration to sustain life. Note the water may have been salty tasting or astringent. While the tissue of Australian Carpobrotus has not been studied thoroughly, it is known that related South African species contain an alkaloid drug (mesembrine) which is similar to cocaine, an can act as a weak local anaesthetic.', conservation: '', wildlife: '', architectural_info: '', characteristics: 'mat-forming, spreading, Perennial succulent under 15cm.', environment: '- full sun
- one drop
- Prefers well drained soils. 
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Carpobrotus glaucescens')
CurrentPlant.create(name: 'Pigface', common_name: 'Pigface, Heart-leaved noon-flower', family: 'AIZOACEAE', description: '', synonym: 'Mesembryanthemum cordifolium', subspecies: '', location_name: '', general_info: 'Tolerates a wide range of soil types, acidic to alkaline. Good soil binder plant.', additional_info: '', identification: 'Succulent glossy green leaves, ovate leaves with an apex.', physical:'Dark green foliage.', horticulture: '- Requires minimal maintenance
- low maintenance required.
- readily available.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: 'Spreading dense groundcover. Good for covering large sunny areas.', characteristics: 'Groundcover, indefinite, Perennial herbaceous shrub < 1m. With a dense canopy, vigorous growth rate and extensive root system.', environment: '- One drop
- Prefers all types, well drained soils, with a neutral to acidic pH.
- Wind Tolerant
- Salt Tolerant', scientific_name: 'Aptenia cordifolia')
CurrentPlant.create(name: 'Pincushion hakea', common_name: 'Pincushion hakea', family: 'PROTEACEAE', description: 'Masses of crimson and cream pincushion flowers in autumn and winter.', synonym: '', subspecies: '', location_name: '', general_info: 'Tolerates a variety of soil types. prefers well drained wbut will tolerate some waterlogging. frost tolerant at maturity. Not wind tolerant, has shallow root system and can be uprooted. Does not tolerate added phosphorous and does not need added fertiliser. tends to dislike high humidity.', additional_info: 'Hakea comes from the German patron of botany, Baron von Hake laurina, means laurel, and inus means similar indicating that the leaves are smilar to a laurel tree Authors: FOG, Browyn Gordon', identification: 'Compact small tree with rounded crown. Grey/green leaves are broad sickle shaped, similar to laurel, with prominent veins. Grey/brown bracts cover young flower buds. Spectacular pincushion-like crimson flowers with protruding white styles.', physical:'- Attractive, Flat, broad, tapering, 3-5 prominent veins, aromatic, green foliage.
- Showing a moderate display of large, 8 cmcm wide, red, Globular crimson flower heads with protruding whit flowers. Flowers during March - August [autumn, winter].
used for cut flowers or floral art
- Medium, gray fruit are displayed during September - November [spring]. Fruits are Woody folicle, ovoid tapering to a point or beak.. Fruiting bodies are minimal in their abundance.
- Medium, brown, Winged on both sides seeds. Seed is inconspicuous in its abundance.
- Smooth grey/green bark, noted for its attrative trunk.', horticulture: '- AIlments: susceptible to root-rot fungus which may casue branch death. May recover after drying out. 
- low maintenance required. Staking recommended for young plants due to shallow root system. Can be pruned to a hedge, but requires regular pruning to keep it dense.
- prune after flowering - If desired can prune into a dense hedge.
- seed - Fresh seed germinates in 3-4 weeks 
- fungal attack - Susceptible to fungal root-rot. may recover when soil dries out.
- readily available. Propagate from fresh seed. germinated after 3-4 weeks.', architectural_uses: 'coastal plant - secondary
drought resistant
fence screener
hedge
ornamental plant
potted specimen
rockery plant
street tree
tolerates harsh condition', culture: '', conservation: 'Attracts nectar feeding birds like honeyeaters.
', wildlife: 'Attracts:
- birds, honey-eaters - Has large flowers and lots of nectar', architectural_info: 'Can be pruned to a dense shrub or hedge. Plant in a warm sunny position for a profuse flowering display. Hardy plant.', characteristics: 'Small tree, 3m, tree < 6m. With a dense canopy and vigorous growth rate.
', environment: '- full sun 
- one drop - may require summer watering.
- Prefers all types, well drained soils, with a neutral to acidic pH.
- Frost Tolerant', scientific_name: 'Hakea laurina')
CurrentPlant.create(name: 'Pink riceflower', common_name: 'Pink riceflower', family: 'THYMELAEACEAE', description: 'Stunning floral display in spring. Compact shrub.
', synonym: 'imelea decussata', subspecies: '', location_name: 'Vahland Ave, Willeton
', general_info: 'Tolerates coastal conditions', additional_info: '\'Pimelea\' is derived from the Greek \'pimele\' meaning \'fat\' which is descriptive of the seeds. \'ferruginea\' is \'rust coloured\' in Latin', identification: 'Simple opposite eliptical 1 cm long leaves. Leaves almost sessile (no stalk), arranged in opposite pairs, each pair at right angles to the pair below. Pink heads 2.5-3 cm across.', physical:'Attractive, small < 1 cm, elliptical, opposite, dark green foliage.
', horticulture: '- Plants may be short lived, usually for less than 3 years.
- low maintenance required. Requires minimal pruning after flowering or to remove flower heads.
- readily available.', architectural_uses: '', culture: '', conservation: 'Coastal plant
', wildlife: '', architectural_info: 'Compact shrub with a profuce covering of pink flowers in spring. Stunning but short-lived floral display short.', characteristics: 'Compact green shrub, < 1 m, woody shrub < 1m.
', environment: 'two drop
Prefers sand, well drained soils, with a neutral to alkaline pH.
Wind Tolerant
Salt Tolerant', scientific_name: 'Pimelea ferruginea')
CurrentPlant.create(name: 'Pink-flowering iron bark', common_name: 'Pink-flowering iron bark, Mugga ironbark, Red ironbark, Mugga', family: 'MYRTACEAE', description: 'Highly ornamental tree, long flowering, reasonably slow growing, best of the ironbarks. Grey-green soft foliage attractive against the black bark.
', synonym: '', subspecies: 'sideroxylon', location_name: '', general_info: 'will grow on most soil types', additional_info: 'Greek sideros meaning \'iron\' and xylon meaning \'wood\', referring to the hard, tough timber of this species. 
Originating on the plateaus, ridges and higher slopes of the Great Dividing Range in NSW, from similar sites in central VIC and the granite belt in southern QLD.', identification: 'Branchlets and twigs pendulous. Leaves lanceolate to 12cm long and 2cm wide, only slightly falcate; petiole to 2cm long; grey-green and somewhat dull. Flowers vary from creamy-white, pinkish-red to bright red. Inflorescence a 3-7 flowered umbel, usually 5 or 7 on slender 7-10mm pedicels amongst the upper leaves, the flowers pendulous and best seen from below. Fruit capsules ovoid to urceolate to 1cm long and 8mm wide. The valves of the fruit (sunken to 2-4mm below the rim) are often obscured by a membranous black staminophore at the rim of the fruit, similar to E. melliodora and E. leucoxylon spp.leucoxylon.', physical:'- Attractive, soft grey-, green foliage.
- Showing a profuse display of 1-1.5cm wide, pink, pendent flowers. Flowers during February - August [autumn, winter].
- Small, 1cm wide, brown fruit. Fruits are cupular or barrel-shaped.
- Conspicuous, hard, rough and persistent brown-black furrowed bark (ironbark) which persists to the lower branches. Bark is deeply fissured in long vertical channels and ridges., noted for its attrative trunk.', horticulture: '- Habit will be shorter and denser to 10-12m if grown on dry ridges and poor gravel soils. Tolerant of Phytophthora cinnamomi.
- low maintenance required. requires minimal attention, succeeding under a wide array of conditions. Moderately lime tolerant.
- minimal - can be coppiced, ie cut at or near ground level to produce multiple stems for aesthetic purposes, to increase use as a windbreak or to improve vigour. 
- seed - seed can be collected year round
- readily available. Introduced from the eastern states. E. sideroxylon \'Rosea\' is a pink flowering form commonly available in nurseries.', architectural_uses: 'coastal plant - secondary
drain clogger
drought resistant
freeway sites
ornamental plant
shade tree
street tree
tolerates harsh conditions
windbreak', culture: 'Produces a very durable heavy timber and is a popular honey tree.', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters 
birds, seed-eaters 
mammals - koalas feed on the foliage', architectural_info: 'An usual complimentary contrast to parks, larger gardens and roadside verges in Perth. This highly ornamental tree can be used as an individual specimen or in groups. Only suitable as a street tree to very wide strees without overhead wires. Can be grown successfully as a bonsai specimen. Firewood tree.', characteristics: 'erect, wide crowned, tree > 12m.
', environment: '- full sun
- one drop
- Prefers well drained soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Eucalyptus sideroxylon')
CurrentPlant.create(name: 'Plum Pine', common_name: 'Plum Pine, Brown Pine', family: 'PODOCARPACEAE', description: '', synonym: '', subspecies: '', location_name: 'north of Geology', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tree > 12m.', environment: '', scientific_name: 'Podocarpus elatus (incomplete)')
CurrentPlant.create(name: 'Poinciana', common_name: 'Poinciana, Royal poinciana, Flamboyant tree', family: 'CAESALPINIACEAE', description: '\'Showiest flowering tree in the world\'.', synonym: '', subspecies: '', location_name: '', general_info: 'will need organic supplements to WA soil types', additional_info: '', identification: 'bi-pinate leaves, red flowers in summer, distinctive umbrella shape, long woody seed pods up to 30cm in Perth Ref: Trees of the World - Scott Leathart , p 167', physical:'- Attractive, bi-pinnate, fern like, green foliage.
- Showing a profuse display of medium, 10 cmcm wide, red, clusters of zygomorphic flowers. Flowers during November - February [summer].
- Large, up to 30cm in Perthcm wide, brown fruit are displayed during March - June [autumn]. Fruits are long, narrow, woody. Fruiting bodies are profuse in their abundance.
- Medium, oval 75mm - 1cm, several in podcm wide, brown, pea like arrangement in pod seeds.', horticulture: '- Generally grow 30S to 30N of equator. Difficult to establish outside of this range. This tree will require close monitoring during early growth stages. Early pruning to establish single trunk.
- moderate maintenance required. Very difficult to establish in Perth. Needs a very protected site.
- not readily available.', architectural_uses: 'drain clogger
ornamental plant
shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Spectacular, deciduous, umbrella shaped tree to 15m ht with 15-30m spread. Bright orange, red flowers covering canopy of the mature tree from November to February.', characteristics: 'large, shady, up to 30m, tree 6 - 12m. With a open canopy, vigorous growth rate and extensive root system.', environment: '- full sun  
- three drop
- Prefers sand, well drained soils, with a neutral to alkaline pH.', scientific_name: 'Delonix regia')
CurrentPlant.create(name: 'Port Jackson Fig', common_name: 'Port Jackson Fig', family: 'MORACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'Location: In front of Dolphin Theatre', identification: 'Large tree. Elliptic blunt pointed leaves 10 cm long, glossy dark green above, rust coloured underneath', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Large tree, 20-30 m, 20-30 m, tree > 12m.', environment: 'water during establishment.', scientific_name: 'Ficus rubiginosa')
CurrentPlant.create(name: 'Prickly  Moses', common_name: 'Prickly  Moses', family: '', description: '1 x 1m shrub. Bipinnate leaves not recurved at edges.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Survives without water. Coastal', scientific_name: 'Acacia pulchella')
CurrentPlant.create(name: 'Pride of Bolivia', common_name: 'Pride of Bolivia, Tipu tree', family: 'FABACEAE', description: 'Seed pods are designed for wind dispersal. Throw them up in the air and they spin like a helicopter blade.', synonym: 'Tipuana speciosa', subspecies: '', location_name: 'North of Arts building', general_info: 'Requires well drained soil.', additional_info: '', identification: 'Has racemes of pea-like bright yellow-orange flowers in spring. Has 10 cm winged pods with a single seed at one end (samara) in summer.', physical:'- Attractive, Pinnate 25 cm long, 11-25 oval leaflets, light green foliage.
- Showing a profuse display of medium, 3 cmcm wide, gold, racemes of pea-like flowers flowers. Flowers during September - November [spring].
- Medium, 10 cmcm wide, brown fruit are displayed during December - February [summer]. Fruits are large wing, seed at one end. Fruiting bodies are moderate in their abundance.', horticulture: '- remove branches - Young specimens may be pruned in winter.
- seed - Propagate from seed in spring.', architectural_uses: 'shade tree
street tree', culture: '', conservation: '', wildlife: '', architectural_info: 'Large tree with broad canopy. Good as a shade tree.', characteristics: 'Large tree, 8-12 m, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun  
- two drop - water during establishment.
- Prefers loam, well drained soils.', scientific_name: 'Tipuana tipu')
CurrentPlant.create(name: 'Pygmy date palm', common_name: 'Pygmy date palm, Minature date palm', family: 'ARECACEAE', description: '', synonym: '', subspecies: '', location_name: 'Geology - Jurassic Gardens', general_info: 'tolerates infertile soil.', additional_info: '', identification: 'Leaves are dark green, glossy, feathery, arching to 1.5m long. Specimens have a dense crown of long pinnate leave with sharp spines. The trunk is rough where the leaf bases have fallen away (scarring). Fruit is borne in a cluster in autumn. Fruit is egg shaped, black.', physical:'- Attractive, feathery arching fronds, dark green foliage.
- Small, black fruit are displayed during March - May [autumn]. Fruits are egg-shaped. Fruiting bodies are moderate in their abundance.', horticulture: '- seed - Propagate from seed in spring (keep at temperatures > 24 degrees C)', architectural_uses: '- potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'slender trunked, dwarf, palm < 6m.', environment: '- full sun
- partial shade
- Frost Tolerant  
- Wind Tolerant', scientific_name: 'Phoenix roebelenii')
CurrentPlant.create(name: 'Queensland Pittosporum', common_name: 'Queensland Pittosporum', family: 'PITTOSPORACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Prefers shade, southern side of buildings. Half hardy - can withstand temperatures to zero', additional_info: '', identification: 'Evergreen tree to 10m. Diamond shaped glossy green leaves with serrated margins. Fragrant white flowers in summer, characteristic clusters of orange berries in autumn, winter.', physical:'- Attractive, Diamond shaped, serrated margins, dark green foliage.
- Showing a minimal display of small, white flowers. Flowers during December - February [summer].
perfumed
- Medium, 1 cmcm wide, orange fruit are displayed during March - August [autumn, winter]. Fruits are clusters of orange berries. Fruiting bodies are profuse in their abundance.', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tree 6 - 12m. With a dense canopy.', environment: '- partial shade
- two drop
- Prefers loam soils, with a neutral to acidic pH.
- Frost Tolerant', scientific_name: 'Pittosporum rhombifolium (incomplete)')
CurrentPlant.create(name: 'Rasberry jam wattle', common_name: 'Rasberry jam wattle, Jam wattle, Mangard', family: 'MIMOSACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Being found on a range of soil types mostly sand and loam (requiring good drainage). Generally growing in semi-arid woodlands.', additional_info: 'acuminata referring to the long thin phyllodes which taper to a point.
The common name of \'jam\' referring to the sweet jam-like smell which arises from freshly cut timber. Mangard is the name used by Aborigines from the south-western region of Western Australia.

Naturally distributed in the south-west, Irwin, Avon, Darling, Eyre, Austin and Coolgardie districts of Western Australia, being predominantly in the drier semi-arid areas. Note it is absent from the coastal region stretching from Perth to Albany.', identification: 'Phyllodes are long and thin (6.5 - 25cm x 2- 5mm), almost terete (circular in cross-section), somewhat curved, tapering into a long curved point (tip not pungent). Phyllodes have many fine longitudinal veins (mid rib usually prominent), the top margin is usually fringed with short white hairs. The base of the phyllode becomes a curved stalk. Flowers are bright yellow in dense cylindrical spikes (1.3 - 2.5cm x 6 -7mm) on very short stalks or stalkless, in pairs in the phyllode axils. Flowers usually 4 merous. Fruit pods are dark brown, linear (5 - 7cm x 5 - 8mm) generally flat or rounded over, slightly constricted between the seeds. Seeds are dark brown or black, shining, oval-oblong (3 - 6mm x 2 - 4mm), positioned longitudinally in the pod, seed stalk folded 2 or 3 times thickening into a yellowish fleshy aril.
Not to be confused with A. burkittii which has many similar features though is more of a wide spreading shrub (not a distinct trunk), this plant having even thinner phyllodes. A. burkittii being found in the eastern part of A. acuminata\'s range.', physical:'- Attractive, long, thin, green foliage.
- Showing medium, 1.3 - 2.5cm wide, yellow, cylindrical spike flowers. Flowers during June - October [winter].
perfumed
- Large, 5 - 7cm wide, brown fruit. Fruits are flat, straight pod.
- Small, 0.3 - 0.6cm wide, black, shining seeds.
Seed edible
- Grey bark is fissured at the base of the trunk, becoming smooth. Young growth being covered with almost golden hairs.', horticulture: '- low maintenance required. moderately lime tolerant, usually frost resistant. 
- prune after flowering 
- insect attack
- mistletoe - stems and branches are often encrouched upon by Amyema fitzgeraldii, Southern mistletoe. A spreading plant to 50cm with glaucous oblong to oval leaves (2-5cm long) bearing tubular flowers and edible pink berries.', architectural_uses: '- drain clogger
- drought resistant
- reduces erosion - soil binder
- shade tree
- windbreak', culture: '', conservation: 'Its timber is hard, durable, impervious to white ant attack and is used as long-lasting fencing material. It is also known to be used for making charcoal and for craft uses (wood turning).
Aborigines used the timber for making weapons (throwing clubs and spear-throwers). The gum is edible and can be mixed with water and kept like honey. Ripe seeds are ground to make flour, and when mixed with the gum can be cooked into a small damper.', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters 
- butterflys 
- insects', architectural_info: 'Firewood tree. Good for gully erosion control (planting near rushing water to stabilise banks).', characteristics: 'wide spreading, tree < 6m. With a dense canopy and vigorous growth rate.', environment: '- full sun  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Acacia acuminata')
CurrentPlant.create(name: 'Red and green kangaroo paw', common_name: 'Red and green kangaroo paw', family: 'HAEMODORACEAE', description: 'Produces a spectacular floral display, floral emblem of Western Australia.', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally growing on sandy gravelly slopes, and areas that have been recently burned or disturbed. Not suited to humid environments. Found growing on the coastal plain. Requiring a moist site, but not favourable to semi-waterlogged environments.', additional_info: 'Named manglesii by the Scottish horticulturalist David Don in 1834; either commemorating Captain James Mangles (1786-1867) a naval commander / horticultural enthusiast who promoted horticultural exploration, supporting James Drummond in his collections of south-west Australian flora (He also sent the seed of several species of kangaroo paws abroad, to nurserymen and botanists (including his brother) in England), or his brother Robert Mangles who successfully raised the species to flowering in Berkshire, or for both men. 
The name \'kangaroo paw\' (initally called \'kangaroo foot\') came into common use in the 1950s, and is used to describe many species of Anigozanthos and Macropidia fuliginosa. The prefix \'Red and Green\' describing the flower colour associated with this species. 
Aborigines referring to it as kuttych, kurulbrang or krulbrang. 
Being naturally distributed from Shark Bay to the Scott River and Mt Barker, Western Australia.', identification: 'Leaves are straight, strap-like, flat, grey - green in colour to 40cm. Inflorescence is a raceme of large tubular woolly forest green with red base and stem. This floral spike reaching up to 1m tall. The scape is rarely branched and slightly curved. Perianths are 6-10cm long, 1.4-2.1cm wide (wider than any other species), lobes are reflexed, floral hairs are green (rarely red) on the perianth and red (rarely yellow or apricot) on the pedicel, ovary and base of the perianth. The anthers are 0.5-1.2cm long (longer than any other species). 
Note that in the wild this species often produces 1- 5 floral stems in a flowering season, the common number for most species of kangaroo and catspaws. In cultivation this number is often increased greatly (10 fold), given favourable conditions. Commonly the inflorescence is many flowered, 5 - 15 flowers per inflorescence (producing between 10 to 100 flowers per season, note these are dramatically increased in cultivation). Flowering peaks in late winter or early spring. 
Two common sub-species of this plant are seen and can be readily identified. A. manglesii ssp. manglessi (Mangles\' kangaroo paw), which can be distinguished by its red-floral hairs that cover the base of the perianth tube above the ovary. The perianths being parallel sided near the filaments (note that the scape is also unbranched as above). This is the form seen in Kings Park. A. manglesii ssp. quadrans can be distinguished by its branched scape (branching often once or twice). In addition its perianths are slightly constricted near the filaments, floral hairs are paler orange-red and extend further up the perianth than \'Mangles\' kangaroo paw\'. The margins at the base of the perianth tube are partially split and flattened, exposing glossy green edges.', physical:'- Attractive, strappy, green foliage.
- Showing a profuse display of large, to 1mcm wide, red, floral spike green - flowers. Flowers during July - November [spring].
used for cut flowers or floral art', horticulture: '- Short-lived in cultivation. 
- low maintenance required. make sure the soil is well drained to help minimise fungal attack (see ailments). Susceptible to frost. To maximise the life of this shrub, regular division (every 2 years) is recommended.
- prune after flowering - cut floral spikes after initial flowering (low but not too low, leaving axillary buds) so that more floral spikes will re-shoot (extending the flowering time). 
- seed - germinating readily, easily propagated from seed.
- fungal attack - susceptible to ink disease Dreschleria irisid, don’t over water
- slugs and snails - desirable due to their succulent leaves, may need snail pellets
- readily available.', architectural_uses: '- ornamental plant
- potted specimen
- rockery plant', culture: 'The floral emblem of Western Australia', conservation: 'A fire opportunist, appearing in great numbers after fires. The rhizome (tough, underground stem) common to most kangaroo paws, is buried 2-10cm below the soil surface allowing the plant to survive bushfires (sprouter). Also commonly seen occupying other disturbed areas (ie road verges).

Note that with regards to the inflorescence, only one or two flowers, open and function at any given moment (an evolutionarily advantageous trait to increase likelihood of successful pollination). Flowers opening from the bottom upward, with new flowers opening at night. Fresh flowers are thrust forward opening (usually) towards the scape (floral stem) on which pollinators (usually birds) sit. These flowers last for roughly 6 days then shrivel and rotate sideways, allowing the next flowers to open and face the stem. Pollinators are attracted to the brightly coloured flowers, being rewarded by often large quantities (250ul/flower/day) of sugar rich nectar (containing 5-20% sugar). As the animal (usually a bird) feasts on the nectar, pushing into the tubular perianth, it is dabbed by pollen coating the anthers (pollen production on this species is copious, anthers being up to 12mm long). These sausage-shaped pollen grains remain viable for only a day, but will hopefully come into contact with the stigma of another flower and seed will be produced.

This species is highly successful in attractive pollinators (highly successful reproduction) being found to have 50-70% of flowers pollinated and setting seed.

This genus protects itself from predation by herbivors through the production of calcium oxalate crystal (sharp-needle like crystals). Clusters of these crystals (called raphides) are toxic to most animals', wildlife: 'Attracts:
- birds, honey-eaters (the nectar produced during flowering attracts many honey-eating birds; including the New Holland, singing, brown, white-cheeked and tawny-crowned honey-eaters, silvereyes, weebills and red wattlebirds. While most of these species are successful pollinators, the silvereye and weebill (with their short bills) are known to cause flower damage in pursuit of nectar. Parrots such as the red-capped and Port-Lincoln parrot also destroy flowers, ripping them off the scape and crushing them to get at the nectar.)
- insects (flowering attracts an array of insect feeders; thrips, ants, bees, hairy catterpillars, long-horned grasshoppers. The european honey bee (Apis mellifera) theives nectar from the flowers and appears not to play a role in pollination (due to the large physical separation of the nectar site and the anthers and stigma). Often capitalising on damaged flowers caused by the silvereye and weebill (birds). The long-horned grasshoppers (Katydids) not only enjoy the feast of the flowers but also use the inflorescence as a site for mating.)
- mammals (flowering attracts marsupials; the honey-possum and western pygmy possum (small animals) which scamper up the floral spikes to drink the sugar rich nectar. Kangaroos (western grey) are also known to graze on the flowers, and often cause damage to plants by knocking down the scapes.)', architectural_info: '', characteristics: 'reed-like, clumping, Perennial herbaceous shrub < 1m.', environment: '- full sun
- One drop
- Prefers sand, well drained soils.', scientific_name: 'Anigozanthos manglesii')
CurrentPlant.create(name: 'Red boronia', common_name: 'Red boronia, Kalgan, Kalgan boronia, Kalgan River boronia', family: 'RUTACEAE', description: 'attractive, perfumed, hanging bell flowers. This native blends well with exotics', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally growing on low-lying sandy swamp flats (tolerating wet situations, temporary inundation). Prefers partial shading though can tolerate full shade and full sun- if roots are protected and kept cool. Requires protection from hot winds and roots. Favouring sandy soil with a low organic matter content and good aeration.', additional_info: 'The common name of \'Red boronia\' describes the attractive bright red-pink bell flowers displayed in spring.
Naturally found extending along the south-coast of Western Australia from Albany to Denmark. Also existing near Busselton.', identification: 'Leaves are variable, with some being simple and linear (2.5-3.5cm x 2-3mm wide) and some imparipinnate / long petiolate (to 3.5cm long) with 3 or 5 linear leaflets (up to 2cm long). Leaf apices acute, tapered bases to the narrowly winged rachis, margins entire, glabrous, dotted with aromatic glands (when crushed emit smell), dark green above lighter below. Hanging bell flowers are mostly solitary, in opposite axils of the upper leaves, forming a racemose spray 15 - 20cm long, petals suborbicular to 1cm long, stigma massive cylindrical, stamens 8 (alternating fertile with sterile) - the longer 4 with incurved carmine red filaments to 2mm long and heart shaped, black. The shorter 4 are half as long with yellow anthers. Flowers are strongly perfumed, ranging in colour from fuchsia-purple to rose pink and magenta rose, being displayed in masses in Spring.', physical:'- Attractive, variable, slender, aromatic, dark green foliage.
- Showing a profuse display of small, 1cm wide, pink, bell flowers flowers. Flowers during September - November [spring].
perfumed
used for cut flowers or floral art
- Small fruit. Fruits are 4 loculed capsule.
- Small, smooth seeds.', horticulture: '- Generally an easily grown boronia (a good beginners plant - requiring minimal care and attention and will survive under a wide range of conditions). Grown commercially as a cut flower - flowers remain fresh for a long period of time.
- low maintenance required. Cover the surface of the soil with a heavy leaf mulch, pebbles, large stones or sandstone slabs to keep the roots cool (note that fine organic mulches may be detrimental if placed close to the crown of the root system, favouring collar-rot). Can add peat moss to soil to help retain moisture. Potted specimens should be watered lightly, less when not in full growth. Moderately lime tolerant, usually frost resistant.
- prune after flowering - Light pruning after flowering helps to prolong life and increases the bushy habit of the shrub.
- cutting - The most popular method of propagation is from firm tip cuttings. Cuttings should be taken in mid - spring to late summer, strike into a coarse sand media and keep in a cool humid environment.
seed - Propagation can be from ripe seed (taken from mature capsules). Sow seed fresh into a friable material and keep in a warm environment. 
- Phytophthora cinnamomi (dieback)
- readily available. a form with paler pink flowers is available as B. heterophylla \'Just Margret\'. Also a hybrid between B. heterophylla and B. molloyae is known as B. \'Carosel\'.', architectural_uses: 'fence screener
hedge
ornamental plant
potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: 'can make a very attractive low hedge or fence screener. This native blends well with exotics.', characteristics: 'erect, rounded, compact, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.', environment: 'full sun
partial shade
tolerates full shade
Frost Tolerant', scientific_name: 'Boronia heterophylla')
CurrentPlant.create(name: 'Red Turpentine', common_name: 'Red Turpentine', family: 'MYRTACEAE', description: 'Has stright-grained, heavy pink timber, termite resistant. Used in underwater construction. Grown widely in the southern USA and Hawaii for shade and timber.', synonym: 'S. laurifolia', subspecies: '', location_name: '', general_info: 'requires summer watering. Minimum temperature 5C. Flowers attract bees.', additional_info: 'Wood has orane-red turpentine-scented resin which protects it from termites', identification: 'Red resin. Cream flowers, fused woody capsules. Along pathway east of Reid Library', physical:'- Dull green leaves, white woolly underneath, green foliage.
- Showing a profuse display of 1-2 cmcm wide, gold, fluffy stamens flowers. Flowers during September - February [spring, summer].
- Small, brown fruit are displayed during March - May [autumn]. Fruits are fused woody capsules. Fruiting bodies are inconspicuous in their abundance.
- grey/brown stringy bark', horticulture: '', architectural_uses: '', culture: 'Has stright-grained, heavy pink timber, termite resistant. Used in underwater construction. Grown widely in the southern USA and Hawaii for shade and timber.', conservation: 'From eastern Australian coastal scrub forests.', wildlife: '', architectural_info: 'Slender tree.', characteristics: 'tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun
- one drop - water during establishment.', scientific_name: 'Syncarpia glomifera')
CurrentPlant.create(name: 'Red-eyed wattle', common_name: 'Red-eyed wattle, Coastal wattle', family: 'MIMOSACEAE', description: 'Attractive fruits and showy flowers (produced for a long period but with small display), favoured for its ability to stabilise coastal sands. May become a weed due to its prolific regeneration ability.', synonym: '', subspecies: '', location_name: 'City Beach (front dune system)', general_info: 'Commonly growing on the coast in sand and limestone soils, suviving salt spray, sand-blast and shifting sands. It also can be found in the river - estuarine environment (Vasse) as far inland as Salter Point.', additional_info: 'The common name of \'Red-eyed wattle\' referring to the black seed which is encircled by thick orange-red stalks, resembling that of blood-shot eyes. cyclops being that given to a one-eyed giant in Greek mythology, referring also to this consipicous seed.

Likely to have been collected by botanists on the Nicholas Baudin expedition to Nova Hollandia in 1801-03.

Distributed along the coastal areas of Western Australia from Jurien Bay to the south coast and the Great Australian Bight, into South Australia. Being found on Rottnest, Garden, Carnac and Penguin Islands.', identification: 'Branchlets glabrous and angular. Phyllodes broad lanceolate (4-8cm long x 0.6-1.2cm wide), with 3-5 indistinct longitudinal viens, apex a curved tip (hook). Long flowering (spring to summer) though only a few flowers are displayed at any one time. Inflorescence is a short raceme of 2 or 3 globular yellow flower heads (4-7mm wide), peduncles 3-9mm long, 40 flowers per head, flowers 5 merous. Pods thickly corieaceous (tough and pliable) to woody, greyish-brown, compressed, narrowly oblong (not constricted between the seeds) twisted in shape (12cm x 0.9-1.2mm), glabrous with slightly thickened margins. Seed pods are profuse, opening in late spring to early summer exposing the shiny black seed with its persistent bright red aril (seed stalk). Seeds mature at the same time. Seeds longitudinal in pod, dark brown to black, ellipsoid (6-8mm x 3-3.5mm). Pods remain on plant for a long time post seed dispersal.
Distinguishing feature; twisting, tangled mass of seed pods which persist on the plant for some time, and the conspicuous seed encircled by a red stalk.', physical:'- Broad lanceolate, green foliage.
- Showing a minimal display of 0.4 - 0.7cm wide, yellow, globular floral head flowers. Flowers during September - February [spring, summer].
- Large, 12cm wide, brown fruit. Fruits are twisted pods. Fruiting bodies are profuse in their abundance.
- 0.6 - 0.8cm wide, black, oval shiny seeds are seen during November, December.
- smooth grey which is fissured at the base', horticulture: '- Has become a weed in South Africa (Cape Province) due to its prolific regeneration ability. 
- low maintenance required.
- insect attack - Numerous insects eat the stems and phyllodes (the larvae of the ant-longicorn burrows into the smaller branches digging down to the larger stems. The adult being often found on flower heads and phyllodes). An array of weevils and beetles eat the seed.
- not readily available.', architectural_uses: 'coastal plant - primary
fence screener
reduces erosion - soil binder
tolerates harsh conditions', culture: '', conservation: 'In harsh coastal environments A. cyclops grows in a dense dome shape to protect it from salt spray and sand blasting. Its suckering habit also helps to stabiles surrounding sand improving its success in colonisation. When found in tuart forests (on the coastal Spearwood soils - Cottesloe and Karrakatta) it takes on a much more upright sparse form (to 7m tall).', wildlife: 'Attracts:
birds, seed-eaters 
Birds aid in the dispersal of seed. It seems likely that the brightly coloured (orange-red) seed stalks, displayed when the pod opens, attract birds such as silvereyes, red wattle birds and ringneck parrots. These birds eat the seed, digesting only the nutritious stalk, later excreting the seed. It seems likely that the occurrence of A. cyclops in places such as tuart forests has arisen from such a mechanism as many of these birds are known to nest here. Some bird species are not as useful as others however with the ringneck parrot choosing to break open the soft green seed pods to eat the immature seed.
insects 
many species of insects are attracted to this plant. It also shelters ants and spiders. Ants play a role in seed dispersal, collecting the seed and its associated stalk (the stalk of which is eaten) storing them underground in their nests. These seeds are known to germinate after fire.
reptiles 
lizards are known to take refuge in the foliage of this dense plant, predating upon associated insects (see ailments).', architectural_info: 'Favoured for its ability to stabilise coastal sands (reducing erosion).', characteristics: 'dome shaped, spreading, woody shrub >2m. With a dense canopy.', environment: '- full sun  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Acacia cyclops')
CurrentPlant.create(name: 'Red-flowering gum', common_name: 'Red-flowering gum, Western Australian Scarlet Gum', family: 'MYRTACEAE', description: 'Beautiful small ornamental or feature tree with showy often flame-red flowers in summer and autumn, easy to grow on a range of soil types requiring minimum attention or effort.', synonym: 'Eucalyptus ficifolia', subspecies: '', location_name: '', general_info: 'Apparently there is some confusion over which soil type is best for this plant. Wrigley and Fagg (1996) stating that it doesn\'t thrive on sand (which appears in opposition to its natural distribution which is on poor, sandy or gravelly soil) and should be grown on heavier soils, in opposition to Greig (1996). McDonald et al. (1990) suggesting that it can be grown on a wide range of soil types with a large amount of success. Again controversy over ability to tolerate frosts, with authors stating it will tolerate frosts to -7degrees (Wrigley and Fagg 1996) and others stating it prefers a frost free environment, especially when young (Greig 1996, McDonald et al. 1990). E. ficifolia thrives in areas of low humidity, and therefore isn\'t recommended for areas such as Sydney and further north. Trees will survive in these areas but are likely to be scrappy. It occurs in areas of 60 inches of annual rainfall and prefers a minimum of 30 inches but will grow in lower rainfall areas if adequate ground water is available.', additional_info: 'Latin fici relating to \'figs\' and folia meaning \'leaves\' and refers to the fig-like leaves. 
The species natively found in a very small distribution of coastal districts in the South-West, from Walpole east and north-east, towards Albany, notably Ficifolia Road (on sandy heathlands within several kilometers from the sea). An isolated population living south of Manypeaks, east of Albany.', identification: 'Juvenile leaves are petiolate, alternating, ovate to broadly-lanceolate, some peltate to 12x6cm, green and hairy. Adult leaves are ovate-lanceolate 10-15cm long and 3-5cm wide, petiole stout 1.5cm long and reddish. Leaves are glossy dark green on upper surface and distinctly dull green on the other side. The inflorescence is a 3-7 flowered umbel, several together forming a large terminal panicle often 25-35cm across; flower buds clavate to 2-2.5cm, the calyx tube narrowly campanulate to 2cm long and 1.3cm across the truncate apex, green or reddish; operculum hemispherical to 5-6mm long, reddish; outer filaments to 2cm long, the inner series shorter to 1cm, variable in colour from crimson and scarlet to pink and white. The buds are club-shaped on long slender stems. The fruit capsules are large, borne in groups of 1 or 2 rarely to 5, on stout pedicels to 2.5cm long, rounded or barrel-shaped 3.5cm deep to 2.5cm wide contracted at the open mouth. The valves are deeply sunken within the hard woody capsule. Fruit green at first, ripening to dark grey-brown, persisting on the tree for several years. Seed red-brown, winged at top. 
Can be distinguished from its relative C. calophylla (Marri) by its smaller form, reddish-brown bark, denser canopy, darker green leaves, smaller and more rounded fruits and earlier flowering time. Further it is easy to confirm the identity by holding a leaf towards the sun, and examining it for oil glands. If none are seen then you have identified C. ficifolia, if oil glands are present then you have C. calophylla.', physical:'- Glossy, dark green foliage.
- Showing a profuse display of red, brilliant flowers. Flowers during December - April [summer].
used for cut flowers or floral art
- Large, 2-4cm wide fruit. Fruits are rounded or barrel-shaped.
- brown, winged seeds.
- Trunk bark is rough, scaly-fibrous, grey to orange to reddish-brown (longitudinally furrowed). Upper twigs are somewhat angular but smooth and greenish-red, with bright green pores (lenticels).', horticulture: '- appears to grow best in coastal areas
- low maintenance required. requires protection from frosts at least in the first year of its growth.
- seed - can be collected year round 
- Phytophthora cinnamomi (dieback)
- readily available. Cultivated throughout the world, with variations of flower colour ranging from deep-red, orange to pinkish and creamy-white. Leaves and twigs with a reddish midrib and bark are considered to be predictive of red, crimson or scarlet flowers. Has been successfully grafted onto E. gummifera and E. maculata, to try and regulate flower colour.', architectural_uses: 'coastal plant - secondary
drain clogger
freeway sites
ornamental plant
potted specimen
reduces erosion - soil binder
shade tree
street tree
windbreak', culture: 'The fruit capsules of this species are often used as \'woggles\' to secure Boy Scouts scarves.', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: 'C. ficifolia is one of the highest regarded ornamental eucalypts and can be used singly or in groups. A good native to blend with exotics.', characteristics: 'dense, broad, rounded crown, tree 6 - 12m. With a dense canopy.', environment: '- full sun  
- one drop
- Prefers all types, well drained soils.', scientific_name: 'Corymbia ficifolia')
CurrentPlant.create(name: 'River oak', common_name: 'River oak, River she-oak', family: 'CASUARINACEAE', description: 'handsome tall tree with a slightly weeping habit, sends out suckers.', synonym: '', subspecies: '', location_name: 'Sunken Garden', general_info: 'occurring naturally along freshwater rivers on the coast and inland. Hardy plant with is adaptable to most soils (clay, well drainged or damp soils) and most conditions except extreme cold and drought. Will grow with very little sun. Tolerating termporary inundation for up to a week after rain. A water absorbing plant.', additional_info: 'The specific name cunninghamiana commemorating Allan Cunningham, a botanical explorer and superintendent of the Royal Botanic Gardens in Sydney.
The common name of \'She-oak\' was coined by early English settlers to whom the wood resembled that of their native oaks, the \'she\' prefix has caused some confusion and may either be a reference to a) the inferior oak-like wood or b) relate to the graceful nature of the tree. The prefix River referencing the association of this species to water-ways.

Being distributed from New South Wales to Queensland along freshwater river systems which occupy coastal areas, the Tablelands and closer Western slopes.', identification: 'Branchlets are green, fine and pendulous. Leaves are reduced to small triangular decurrent scales. Casuarina having scale leaves in whorls of 12-15. Male and female trees (dioecious), the male staminate flowers are reddish brown, seen in Feb-April, on slender spikes to 2-3cm long at the ends of the 1 year old branchlets. The female pistillate flowers are clavate on 5mm peduncles amongst the upper twigs. The fruit cone is small and woody, grey-brown, 9-10mm long, barrel shaped, with protruding teeth when ripe. Seeds are ellipsoidal, pale brown, 4mm long, with a papery wing.', physical:'- Attractive, fine, pendulous, green foliage.
 - Small, 0.4cm wide, brown, ellipsoidal, papery winged seeds.', horticulture: '- This plant sends out suckers which may appear at a distance from the parent plant. Rapid growth and formation of thickets is therefore common. These plants fix their own nitrogen and can therefore be grown successfully in nutrient deficient soils.
- low maintenance required. moderately hardy to -8 degrees C, in colder regions growth will be slow and stunted. The needles make excellent mulch. Moderately lime tolerant. Tolerant of Phytophthora cinnamomi.
- minimal - Pruning is seldom required, with the natural habit generally being a desirable feature of the plant. Old plants may be improved with light pruning of older branches, followed by watering and feeding to encourage renewed vigour. 
- seed - germinates readily and should be sown in spring (requiring a warm, moist atmosphere). Seed needs to be harvested from mature cones. Cones being placed into a glass jar in a warm dry spot until the seeds are released.
- readily available. currently being used in urban plantings in Canberra', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
freeway sites
ornamental plant
reduces erosion - soil binder
shade tree
street tree
windbreak', culture: 'The extremely tough timber of Casuarina\'s has been used for poles and scaffolding, tool handles, charcoal, parquetry.
The wood has also been used for traditional Aboriginal hunting weapons.', conservation: 'Plants are wind pollinated.', wildlife: 'Attracts:
- birds, seed-eaters', architectural_info: 'Popular in caravan and camping areas because of the gentle sighing sound made when the wind blows through the foliage. Good tall screening plant, plant 2.5 - 3m apart to get a good dense screen (suckering plant - may over take an area if not properly managed). Will help to drain wet areas due to its water absorbing nature (note that this may be detrimental to other plants). Useful tree to minimise gully erosion, i.e. unstable areas where water flows (river-banks). Bonsai specimen. Firewood tree. Fodder plant. Fire retarder.', characteristics: 'slightly drooping, conical, tree > 12m. With a vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop - may require summer watering.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Casuarina cunninghamiana')
CurrentPlant.create(name: 'River red gum', common_name: 'River red gum, Murray red gum, Red gum', family: 'MYRTACEAE', description: 'quick growing, not a suburban garden tree due to its size, better for parks or larger areas.', synonym: 'E. rostrata', subspecies: '', location_name: '', general_info: 'Favours deep, alluvial soils, but will grow on sandy and medium clay-loams. Accepts wet conditions. Will tolerate cold clay soils that are poorly drained, but not boggy or stagnant in winter, and usually dry out in summer. Proved to be hardy on both a range of soils and over a range of climates. Is slightly salt tolerant.', additional_info: 'Possibly one of the following; camaldulensis latin for \'from Camalduli\' a religious order from Naples, Italy, the site of the first validly named plants. Or, being from Camaldoli, a place in Tuscany, Italy, where it was cultivated. Most likely a combination of the two, the species being a cultivated tree in the garden of the Camalduli religious order in Naples, Italy. 
River red gum has the widest distribution of all eucalypts, ranging from Queensland and the Northern Territory to the drier areas of Western Australia, South Australia, New South Wales and Victoria. In SA, WA and NT it is found inland, generally in the 250-635mm rainfall zone. To the north of Western Australia it is confined to the banks of watercourses, being distributed from the Kimberley to Wiluna and Meekatharra then west to Bowes River (just north of Geraldton). In the eastern States, it is particularly common along the Murray-Darling river system, again being mostly found near or along water courses and in alluvial valleys to the west of the Great Dividing Range.', identification: 'Due to its massive natural distribution its appearance varies from a thick-stemmed gum with widely spreading low branches (Victoria and South Australia) to a slender stemmed tree branching at a greater height from the ground (11 to 12m) with more erect branches (to the North). 
Juvenile leaves blue-green, petiolate, opposite for a few pairs then alternate, ovate to broadly-lanceolate to 26x8cm. Mature leaves alternate, dense, pale to mid or grey-green, linear-lanceolate, mostly straight or only slightly falcate, 15-20cm long x 1.5-2cm wide, drooping, petioles to 1cm. Leaves with numerous round yellow green and clear, island oil glands. Flower buds are highly variable, the operculum varying from almost egg shaped to conical and beaked (latter two forms common of those trees in the eastern States and the south-western corner of Western Australia). Flowers in axillary umbels of mostly 5 or 7, occassionally 10, on a peduncle 1-1.2cm long. Filaments creamy-white, anthers cream. Flowering mainly in spring but intermittently at other seasons, depending on rainfall. Fruit is a squat capsule, broadly hemispherical to 6-7mm long, narrowed toward the rim, the acute valves are prominently exserted (small protruding triangular valves). Thick trunk often buttressed by the large roots. 
In the north of the Perth district (from the Bowes to Moore rivers) E. camaldulensis var.obtusa, intergrades with E. rudisvar. rudis (flooded gum being common to the metropolitan region), creating many different forms (hybrids). E. rudis having broader leaves, larger broader flower buds and fruits with the disc scarcely or very marginally domed. It is also known to hybridize with E. tereticornis in parts of Queensland and with E. ovata in Victoria.', physical:'- Linear and mostly straight, drooping, green foliage.
- Showing white flowers. Flowers during September - February [spring, summer].
- Small, 0.3-0.7 x 0.4-1.0cm wide fruit. Fruits are squat capsules.
- Small, yellow, cuboid, with angles and smooth faces seeds.
- Bark is mostly smooth, with some patches of scaly bark at the base (red-brown). The upper trunk and branches smooth, blue-grey, creamy-yellow or pinkish, decorticating in irregular patches (giving its red streaked look). Trunk reaching 2-3m wide in old specimens, may be buttressed by the large roots. The timber is pale to deep red., noted for its attrative trunk.', horticulture: '- Tolerant of Phytophthora cinnamomi, moderately lime tolerant. Appears to range in its tolerance for frosts, from frost hardy to frost tender.
- low maintenance required. is extremely fast growing and can attain up to 60feet in 10 years under 10inch rainfall.
- minimal - will withstand hard pruning if necessary. Can be coppiced i.e. trunk cut at or near ground level, and new growth forms just below the cut - to produce multiple trunks for aesthetics or windbreaks or for firewood or to renew vigour of the tree.
- seed - Seed can be collected from March - July, establishment best from seedlings.
- readily available. Form can be quite variable, with several varieties available from nurseries and forestry departments. Widely planted overseas, with success in semi-arid areas bordering the Mediterranean (Israel and North Africa).', architectural_uses: 'branch dropper
drain clogger
drought resistant
freeway sites
ornamental plant
reduces erosion - soil binder
shade tree
windbreak', culture: 'E. camaldulensis has strong, straight grained, durable red timber which is used in heavy construction. It is also a valuable honey making tree. 
This tree becomes large and majestic with age and is the traditional \'gum tree\' depicted by painters (notably Sir Hans Heysen of South Australia). Its leaves have been depicted on many Australian postage stamps. 
Is an important source of sawn timber in Brasil. 
It is likely that Aboriginal desert communities used river red gum in numerous ways; the fresh young (red) leaf tips are boiled in water and the tea is either drunk or used as a \'wash\' for colds and coughs. The sap may also be boiled (by using the dark inner bark) and the solution is used as an antiseptic for cuts and sores (scabies). The heartwood may be boiled in water and drunk to help easy diarrhoea. Some grubs living on the tree can be eatern. Leaves are used to serve food on.', conservation: '', wildlife: 'Attracts:
- insects - important source of pollen for bees
- mammals - koala\'s feed on the foliage (eastern states)', architectural_info: 'Considerable value for large scale plantings such as in parks and golf-courses (out of reach of flying balls). An ideal rural tree (in the eastern agricultural areas and in pastoral districts), providing shade and shelter for stock, in addition to fodder (ie can be used as an extra feed source during drought periods). Good for planting in areas of quick moving water, ie river banks, gullies, to minimise water erosion. May be used for floral art. This plant is a water absorber and will help to drain wet areas, note though that its roots may take up water to the detriment of other bog plants. The wood burns well and due to its quick growth it can be used as a \'firewood tree\'.', characteristics: 'low branching, irregular, spreading, tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun  
- one drop
- Prefers all types soils.
- Salt Tolerant', scientific_name: 'Eucalyptus camaldulensis')
CurrentPlant.create(name: 'Rosemary Grevillea', common_name: 'Rosemary Grevillea', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Does well in sandy loam or clay Able to be hedged', additional_info: 'Foliage similar to that of the Rosemary', identification: 'Shrub with glossy, dark greenish foliage; red flowers', physical:'- Attractive, toxic, Small, narrow leaves, pungent, dark green foliage.
- Showing a moderate display of 1.2-2mm acrosscm wide, red, conflorescence flowers. Flowers during June - February [spring, summer, winter].
- Small, 8-9mm x 5mmcm wide, brown fruit. Fruits are Cylindrical to ovoid. Fruiting bodies are moderate in their abundance.', horticulture: '- Hybrids include \'Pink Pearl\'; \'Canberra Gem\'; \'Rosey Posey\'; \'Clearview David\' Extinct in the wild. Widely cultuvated in Europe
- high maintenance required.
- readily available.', architectural_uses: 'groundcovers for areas where some height is required
hedge
tolerates harsh conditions', culture: '', conservation: 'Extinct in natural habitat', wildlife: '', architectural_info: 'Hedges well', characteristics: 'dense to open, erect, woody shrub >2m. With a dense canopy.', environment: 'full sun   
one drop - water during establishment.
Prefers all types soils.
Frost Tolerant', scientific_name: 'Grevillea rosmarinifolia')
CurrentPlant.create(name: 'Rottnest cypress', common_name: 'Rottnest cypress, Rottenst Island Pine, Sand cypress', family: 'CUPRESSACEAE', description: '', synonym: 'Callistris robusta', subspecies: '', location_name: 'Sunken Garden', general_info: 'Commonly occuring on coastal sany soils, and on limestone ridges.', additional_info: 'The specific name of preissii commemorates Ludwig Preiss, the German botanist who collected in Western Australia from 1839-41. Commonly known as Rottnest Cypress, due to its once abundant population on Rottnest Island.
Collected by J.A.L. Preiss in 1839 on the Swan River (Rocky Bay) and at Woodman Point.

Three subspecies exist. The specimens found in the Perth region are subsp. preisii. Subsp. verrucosa is found inland, in the eastern areas of Western Australia, in South Australia and Victoria. Subsp. murrayensis occurs in South Australia and Victoria.', identification: '3 sub-species of Callistris preissii exist.

This conifer when grown in coastal environments has a more rounded, spreading form than the predominant shaft like forms of most. Coastal specimens are typically smaller 5-10m tall, than protected specimens. Protected specimens are straight, sparser and reach 10-15m. It generally has a jaggered outline, with young specimens showing a flame-like shape.

Leaves are tiny, linear to oblong, 3mm long, rounded on the back, lying flush with the stem. Male and female cones exist on the same tree (monoecious). Male cones are small and inconspicuous (5mm wide) terminating branchlets, female cones are woody, globular, 2.5-3.5cm wide, warty in appearance, showing 3 large and 3 small valves (used to distinguish this species). Female cones are nearly sessile, solitary of in small groups on stout fruiting branchlets. Young male and female conese are produced in October - November. Mature female cones persist on the tree year-round. Be careful not to confuse rounded cone-like structures seen at the ends of branchlets with the male cones, as these are infact insect galls. Seeds are small, fawn coloured and winged.

Best seen on Garden Island and at Woodman Point. Also stands can be seen at Trigg and along the Swan River at Peppermint Grove.

Distinguished from Actinostrobus pyramidalis \'Swamp cypress\' by its proximity to the coast and occurrence on offshore Islands. It has a broader shape with larger cones of small and large valves.', physical:'- Small scale-like, green foliage.
- Showing a inconspicuous display of small flowers.
- Small, brown, winged seeds.
- rough grey bark is longitudinally fissured.', horticulture: '- Minimal - Pruning is useful to shape and control the size of the plant. When young, pruning should be done to leave a single leader. If required, regular pruning should be done to enable new growth, as old wood (brown branches) will not re-shoot. Cuts should be inconspicuous and; slanting towards the sky \'above eyelevel\' and slanting towards the ground \'below eyelevel\'.
- Seed - Propagation is from seed. Seed may require stratification or cold treatment (6-8weeks in a refrigerator) to initiate germination.', architectural_uses: '- coastal plant - primary
- drain clogger
- drought resistant
- freeway sites
- potted specimen
- shade tree', culture: 'Aboriginal mothers burnt the leafy twigs of this plant, producing a fragrant smoke, thought to be good for their babies.', conservation: 'Its spreading, multiple trunked, rounded form, helps it adapt to coastal environments. Also the production of thickets is an adaptive feature, trees being at high density (germination being high post fire) create a barrier against the salt laden coatal winds. These trees all reach the same height and are straight and unbranched with a small crown.
Callistris presissii is readily killed by fire. Regeneration is often poor due to its slow growth. The lengthy period required for maturation means seed abundance is also poor. Its populations have declined since European settlement. Populations on Rottnest Island are now being re-established in plantations.
Callistris presissii is long-lived with a life span of up to 100 years. This species is thought to be a local climax species (with regards to succession).
Seed released from the female cones are winged and dispersed by the wind.
Produces a resin that deters most insects. Note that the shaded protected environment of the thickets provides the ideal conditions for mosses and fungi to grow. Lichen being commonly found on the trunks and branches.', wildlife: 'Attracts:
- birds (nesting / perching 
are protected in the dense thickets)
- birds, seed-eaters 
(cockatoos and parrots)
- mammals 
(often shelter in the thickets)', architectural_info: 'a good farm shelter tree, also good to minimise gully erosion.', characteristics: '- rounded
- spreading or compact
- conifer 6 - 12m. 
- With a dense canopy.', environment: '- Full sun  
- One drop 
- Frost Tolerant  
- Wind Tolerant', scientific_name: 'Callitris preissii')
CurrentPlant.create(name: 'Rottnest tea-tree', common_name: 'Rottnest tea-tree, Moonah, Black tea-tree', family: 'MYRTACEAE', description: 'rampant grower which may create problems in small gardens, salt soil tolerant', synonym: 'M. pubescens', subspecies: '', location_name: 'sunken garden', general_info: 'Found growing on limestone soils near the coast (resistant to salt spray). It tolerates temporary periods of inundation, being able to cope with permanently wet conditions as long as they are not stagnant (alluvial or sandier soils), also tolerating wet cold clay soils which dry out in summer but are not permanently boggy. Prefers moist soil.', additional_info: 'Latin lanceolata meaning \'shaped like a lance-head\', refering to the leaf shape. 
Collected in 1820 from a plant cultivated in Berlin. 
Commonly associated with Rottnest Island, hence its common name \'Rottnest tea-tree\', as it can be found around the development area on the east side of the Island. \'Moonah\' originates from eastern Australia. 
Being naturally found covering the majority of Australia, with exception to the Northern Territory and Tasmania. In Western Australia it ranges from coastal areas near Dirk Hartog Island to the South Australian border, with isolated inland occurrences (to Coolgardie) generally near salt lakes.', identification: 'In general this tree is dark looking, though its leaves are not particularly dark (dull bluish-green to olive-green), its dense foliage and overhanging canopy casts shade over much of it. Leaves are alternate, narrowly elliptic to linear to 1-2cm long 1-2mm wide, acute, reflexed at the apex (usually bent downwards i.e. curving back), concave above, held at wide angles to the stem. Leaves are small and crowded along the branchlets. New growth is pale green (usually in spring), with mature leaves darker green. Flowers are white to pale yellow, loosely arranged in cylindrical spikes 3-6cm long by 2cm across, interspersed with the leaves towards the end of the stem. The stamens are in 5 bundles of 8-14 filaments. Flowering is often irregular throughout the year with a definite peak in spring and summer. Fruits are small 5-6mm long and wide, smooth persistant woody capsules with are spherical to ovoid (wrinkled appearance), narrowed at the top and loosely spaced (sometimes closely packed) along the branchlets. Fruits are found along the stem in clusters with spaces in between them. Three WA subspecies are recognised, two of which occur in Western Australia. These being M. lanceolata ssp. occidentalis and M. lanceolata ssp. planifolia 
May be confused with M brevifolia.', physical:'- Small, crowded, dark green foliage.
- Showing a profuse display of large, 3-6cm wide, white, cylindrical spikes flowers. Flowers during October - March [summer].
- Small, 0.5-0.6cm wide fruit. Fruits are smooth, woody capsules.
- Dark grey to mid-brown, rough stringy bark (fissured)', horticulture: '- low maintenance required. suckering plant which will form new shoots from roots or rhizomes. Rampant grower which may create problems in small gardens. Very lime tolerant. Usually frost resistant. Tolerant of Phytopthora cinnamomi.
- minimal - coppice plant, ie it can be cut to or near ground level and will produce mulitple stems for; aesthetic purposes, to increase use as windbreak or to improve vigour.
- seed - seed can be collected thoughout the year. Best establishment from seedlings. 
- insect attack - larvae of the Longicorn beetle (Cerambycidae, Eurynassassp.) live in the wood, boring tunnels, and can be highly destructive.
- readily available. has been planted fairly extensively in some areas', architectural_uses: 'coastal plant - primary
drain clogger
drought resistant
reduces erosion - soil binder
shade tree
street tree
tolerates harsh conditions
waterside position
windbreak', culture: '', conservation: 'M. lanceolata is a hardy coastal tree whose dense growth habit helps it survive close to the coast, where it recieves strong, salt laden winds. Under such environmental conditions its branches form at wide angles and creates a dome canopy which often meets the ground (rarely re-rooting). Such dense foliage means that if the outer sections are killed by salt, the network of twigs below protects foliage behind. In undisturbed conditions the trees are found in close stands with a seemingly continuous smooth canopy. 
While it is a suitable plant for coastal positions we rarely see it in the Perth region today. With only a small population in the Yalgorup National Park, on an island in Lake Preston, and a small clump at City Beach (120m south of the car-park opposite the southern groyne). This is probably due to its susceptibility to fire. This may seem bizarre as it generally regenerates well, however if subject to subsequent fires saplings are killed prior to them being able to set seed. However it is abundant on Garden and Rottnest Island.', wildlife: 'Attracts:
- birds, honey-eaters - the singing honeyeater and silvereye
- birds, insect-eaters 
- birds, nesting / perching - being the habitat for fan-tailed cuckoo, red-capped robin, golden whistler and western gerygone (Rottnest Island)
- butterflys - the pea-blue butterfly
- insects - attracting wasps and native bees', architectural_info: 'Generally planted as a coastal windbreak. Good firewood tree.', characteristics: 'low-branching, densely crowned, tree < 6m. With a dense canopy and vigorous growth rate.', environment: '- full sun 
- one drop
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Melaleuca lanceolata')
CurrentPlant.create(name: 'Salt she-oak', common_name: 'Salt she-oak, Swamp she-oak, River she-oak, Cooli', family: 'CASUARINACEAE', description: 'Lives in salty waterlogged environments. Rampant Grower - resprouts from suckers.', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally occuring along rivers, estuaries and clay flats. Tolerating salty waterlogged soil, both temporary inundation and permanently boggy situations (preferring non-stagnant bogs where water moves through the soil). Acts as a water absorber, draining wet areas (this may be detrimental to other plants). Tolerates salt laden winds. Will grow in very little sun.', additional_info: 'The specfic name obesa is derived from the Latin obesus, which means \'plump\' and refers to the shape of the cones.
The common name of \'She-oak\' was coined by early English settlers to whom the wood resembled that of their native oaks, the \'she\' prefix has caused some confusion and may either be a reference to a) the inferior oak-like wood or b) relate to the graceful nature of the tree. The prefix Salt referring to the association of this plant to saline areas, such as estuaries. Swamp and River are more general common names which may be confused with other species of she-oak such as C. cunninghamiana which is also commonly known as River oak.

Collected at the Swan River and Port Leschenault by J.A.L. Preiss in 1839.

Native to southern Australia, extending from the Murchison River to Israelite Bay and inland to Kalgoorlie (Western Australia). Being naturally distributed on the eastern side of the coastal plain, with good specimens seen along the lower Swan and Canning Rivers, in Beermullah soils near Bullsbrook and between Forrestdale and Mundijong. Also found in South Australia, Victoria and New South Wales.', identification: 'Form varies considerably; with some specimens being upright, neat and uniform, while others are more tortuous, bending in many directions, compact forms with low lying branches re-rooting.
Leaves are reduced to small triangular decurrent scales on the branchlets, which take on a \'needle-like\' appearance. Needles are slender greyish green. Branchlets glaucous with numerous internodes, nodes on the branchlets are 0.5-1.5cm apart; 12-20 scale leaves at each node. This plant dioecious, having male and female flowers on separate plants. Staminate (male) flowers are small numerous and orange, appearing in a catkin-like cluster at the tips of the needles. Pistillate (female) flowers are also small, reddish tinged, arranged in spikes which appear as globular protrusions from the main stem. Flowering is throughout the year. Fruiting cones are egg shaped or globular, pale brown 1-2cm long, 1-3cm wide. Thin valves within the cone separate the individual seeds. Valves hairy on the outside when young, ribbed. Seeds are 5-7mm long with a straw - grey colouring, glabrous, and an opaque to translucent wing.

Note that this genus is differentiated by having scale leaves in whorls of 12-15.

Not to be confused with a closely related species C. glauca commonly found in eastern Australia. Can be distinguished based on their growth structure. C. obesa generally dividing repeatedly into equal branches, whereas C. glauca tends to have a shaft structure.', physical:'- Attractive, needles, grey -, green foliage.
- Small, 0.5 - 0.7cm wide, gray, winged seeds are seen during January, February.', horticulture: '- These plants fix their own nitrogen and can therefore be grown successfully in nutrient deficient soils.
- minimal - Pruning is seldom required, with the natural habit generally being a desirable feature of the plant. Old plants may be improved with light pruning of older branches, followed by watering and feeding to encourage renewed vigour. 
- seed - Mature seed should be collected from mid to late summer (note immature seed is red-orange in colour, seed from cones closest to the trunk will be more mature). Sow seed in autumn and spring. Can be direct seeded.
- not readily available.', architectural_uses: 'coastal plant - secondary
drain clogger
freeway sites
hedge
indoor plant
potted specimen
reduces erosion - soil binder
shade tree
wetland plant
windbreak', culture: 'The extremely tough timber of Casuarina has been used for poles and scaffolding, tool handles, charcoal, parquetry.
The wood has also been used for traditional Aboriginal hunting weapons.', conservation: 'Flowers are wind pollinated.
This plant is a very successful coloniser, growing rapidly and establishing itself in disturbed environments. Hence it is often found growing along road verges in swampy regions. It grows well on bare silt in estuarine environments, stabilising the soil and allowing later successional species such as Melaleucas to grow.

Fire kills C. obesa.', wildlife: 'Attracts:
- birds, nesting / perching - not as important as many other wetland trees, as it develops few hollows. It is sometimes used by stick-nest builders such as herons.
- birds, seed-eaters - seed eating birds are attracted to the fruits of the tree. In addition the berries produced by the mistletoe, Amyema linophyllum, which often grows on this plant attracts the mistletoebird.
- butterflys - the mistletoe, Amyema linophyllum, which often grows on this plant attracts the wood-white butterfly.
- insects - supports an array of insects including the lemon-yellow long-horned beetle with black wing-tips.', architectural_info: 'Sends out suckers to form new plants - good for thicket creation (rampant grower). Bonsai specimen. Fire retarder. Firewood tree. Fodder plant. Farm shelter tree.', characteristics: 'highly variable, tree 6 - 12m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- one drop - water during establishment.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Casuarina obesa')
CurrentPlant.create(name: 'Saltwater paperbark', common_name: 'Saltwater paperbark', family: 'MYRTACEAE', description: 'Beautiful, unique looking specimen tree', synonym: '', subspecies: '', location_name: 'sunken garden', general_info: ': Often being found in saline depressions and swamps (such as Lake Coogee, near the Swan Estuary such as Pelican Point and Mt Henry and on the saline clay flats east of Forrestdale Lake). It is tolerant of both water-logging (temporary inundation) and salt in the air and water.', additional_info: 'Latin cuticula meaning \'thin external skin\', and refers to the deciduous papery bark. 
Collected near Esperance by Labillardiere in 1792. 
Being natural distributed from Perth to Israelite Bay (mainly from Walpole to Israelite Bay) and inland around salt lakes in the Great Southern, Western Australia. It is also found on Kangaroo Island, South Australia.', identification: 'Leaves light to dull grey-ish green. Decussate (arranged in two opposite pairs form in 4 lines down the stem), glabrous, often recurved, linear to linear-oblong 1cm long by 2mm wide. Flowers in single or multiple heads at the ends of branches, white or cream in colour with numerous prominent stamens surrounded by imbricate brown bracts. Fruits rough and woody and are up to 1cm long, star-shaped when viewed end on due to the 5 long persistent sepals, claw-like when viewed side on. Fruits are either solitary or grouped with only a few others (small cluster). 
Not to be confused with M. calycina which has similar fruits and flowers but very different leaves (cordate to ovate). Also can be distinguished from Freshwater paper bark M. raphiophylla by its different leaves, fruit and habit which is often a more splitting form with several trunks.', physical:'- Small, narrow, light green foliage.
- Showing a profuse display of small, white, clustering flowers. Flowers during September, October.
- up to 1cm wide fruit. Fruits are rough, woody, claw-like.
- Deciduous papery white bark., noted for its attrative trunk.', horticulture: '- low maintenance required.
- seed - Seed can be collected year round. Mature seeds (capsule is woody and plump) can be directly seeded into suitable media and should be planted in autumn and spring. Establishment best using seedlings.', architectural_uses: 'coastal plant - secondary
ornamental plant
tolerates harsh conditions', culture: 'The papery white bark being used sometimes in hanging baskets.', conservation: 'When it is found growing with Freshwater paperbark M. raphiophylla, Saltwater paperbark grows nearer to the water. At Salter Point on the Canning River only Saltwater paperbark grows, however on the opposite bank we find Freshwater paperbark. This is because Salter Point is low-lying and exposed to salt laden winds coming across the river, while the opposite bank is more sheltered and steeper with less salt in the soil water. 
Saltwater paperbark survives fires by resprouting along the branches or from its rootstock.', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, nesting / perching - the canopy is used by waterbirds for nesting, roosting and perching. In particular the rufous night-heron roots here in the day.
- butterflys - the Australian admiral butterfly has been seen attracted to the flowers', architectural_info: 'Beautiful, unique looking specimen tree with lots of character. Good contrast of the green foliage with the white papery trunk. The white turnk being \'whiter\' than any other of Perth paperbarks.', characteristics: 'tortuously branched, erect, tree 6 - 12m.
', environment: '- full sun
- partial shade
- one drop
- Prefers loam soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Melaleuca cuticularis')
CurrentPlant.create(name: 'Sandplain bottlebrush', common_name: 'Sandplain bottlebrush, Sand bottlebrush', family: 'MYRTACEAE', description: 'ornamental medium sized shrub with brilliant red flowers in spring - summer', synonym: '', subspecies: '', location_name: '', general_info: 'found growing on kwongan sandplain and sandy flats', additional_info: 'Commonly known as \'bottlebrush\' due to its dense cylindrical floral spike (also used to describe Callistemon and Calothamnus, note that Callistemon is often known as \'true bottlebrush\'). The prefix of \'Sand\' or \'Sandplain\' describing its native habitat.
Several variants are known, the Perth region variant extends from Alexander Morrison National Park to Jarrahwood. Other variants extend from north of the Murchison River to Tammin.', identification: 'This genus is a member of the Myrtaceae family and therefore emits the characteristic spicy aroma on crushing of the leaves. Leaves are obovate, decussate, recurved, 0.6-0.9cm long x 0.4-0.5mm wide, adjacent pairs usually overlapping, distinctly 5 veined (including the lateral margins). Young growth often hairy, becoming glabrous. Floral head is tufted, bottlebrush-like terminal head, 3cm in diameter, male or bisexual or mixed. Flower colour varies from multicoloured green with red at the base of the staminal bundles to uniform green, orange or red. Staminal bundles 1.8-3.2cm long, claw 1.2-2.1cm long, glabrous, filament 3 arising together. Flowering can be long, from spring to autumn, most flowering occurs from January to April.
Many variants exist in the Perth region.

This genus is a close relative to and resembles Melaleuca. It is readily identifiable through examination of the staminal arrangements', physical:'- Small ovate, green foliage.
- Showing medium, 3cm wide, red, tufted floral head flowers. Flowers during September - April [spring, summer]. fruit. Fruits are persistant woody capsule.', horticulture: '- low maintenance required. usually frost resistant.
- regular pruning - Tolerates light or heavy pruning, pruning encourages bushy growth and floral abundance.
- seed - Propagation can be from ripe seed (taken from mature capsules). Sow seed fresh into a friable material and keep in a warm environment.
- Phytophthora cinnamomi (dieback)', architectural_uses: 'coastal plant - secondary
hedge
ornamental plant
potted specimen
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: 'Can be used to make a small hedge and windbreak.', characteristics: 'rounded, woody shrub 1 - 2 m.', environment: 'full sun
partial shade
one drop
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Beaufortia squarrosa')
CurrentPlant.create(name: 'Saw-tooth banksia', common_name: 'Saw-tooth banksia, Acorn banksia, Orange banksia', family: 'PROTEACEAE', description: 'Outstanding as a feature plant. Flower-spikes are consipicuous and attractive in bud form and during flowering (often sold by florists). Shapely compact form.', synonym: '', subspecies: '', location_name: 'zoology, glasshouses', general_info: 'Growing in deep yellow or white sand in tall shrubland and low woodland. Growing on the western side of the coastal plain, confined largely to the area where tuart gives way to jarrah. Apart from Point Walter it only occurs north of the Swan River. Annual rainfall 300-900mm.', additional_info: 'Specific name from the Greek prion \'saw\' and otes \'like\', referring to the leaf margins. 
Type collection by James Drummond near the Swan River in the late 1830s. 
B. prionotes is distributed in Western Australia from Shark Bay to Wagin, with sporadic inland populations reaching Wongan Hills, Quaidaring and Newdegate.', identification: 'Neat compact shape derives from its tendency of its branchlets to grow straight or curve smoothly upward and its habit of forking round its cones. Leaves dull green, scattered, broadly linera, obtuse 15-27cm long x 1-2cm wide, often undulate, toothed, shortly petiolate. New growth pale brown. Inflorescence terminal, conspicuous, ovoid, 7-15cm long 7-8cm wide at flowering. Individual flowers are white when unopened (soft white woolly buds), orange when open. The lowest flowers of the spike open first producing an \'acorn\' of orange and white. Old flowers soon falling. Fruit is grey, follicles up to 60, elliptic - oblong opening when mature or with fire. 
Distinguished from B. menziesii by its compact, shrub-like habit with upwardly curving branches, orange-white flower-spikes and its saw-toothed leaves.', physical:'- Broadly linear, green foliage.
- Showing a moderate display of large, 7-15cm wide, orange, ovoid to cylindrical flowers. Flowers during February - August [autumn, winter].
- used for cut flowers or floral art
- Large, 7-15cm wide fruit. Fruits are cylindrical. Fruiting bodies are inconspicuous in their abundance.
- Medium, 1-2cm wide, winged seeds are seen all year round.
- smooth or horizontally grooved, thin, grey', horticulture: '- Rather fast-growing shrub or tree often narrow when young, spreading with age (quickest growing of the Perth banksias). Flowering 3-5 years from seed. Usually frost tolerant though this may depend on provenance or local conditions. Sometimes flowering twice a year. Has flowered in the eastern states but is considered difficult, good drainage and full sun is essential, and limestone underlay may be advisable.
- low maintenance required. Moderately lime tolerant, usually frost resistant.
- minimal - may require pruning later in life, if habit becomes straggly.
- seed - Seed can be collected year-round. Best establishment from seedlings. The average strike rate from a propagule 100%. No available information on time taken from propagation to field ready, or establishment success rates.
- insect attack - the larvae of a weevil burrows into the follicles, eating the seed. It pupates in a follicle and the adult eats a hole through from which it emerges. The larvae are parasitized by a species of ichneumon wasp.
- Phytophthora cinnamomi (dieback)
- not readily available. Successfully grown commercially for the cut flower trade. Height is often less than 10m in cultivation.', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen
windbreak', culture: '', conservation: 'B. prionotes is the only Perth banksia readily killed by fire. It regenerates well from seed, being a successful colonizer. Seedlings often growing where the land has been disturbed and thus it is often seen in thrick growths along roadsides. 
Closest related species is B. burdettii which differs in having shorter dentate leaves (close lateral veins), persistent old flowers and larger follicles.', wildlife: 'Attracts:
- birds, honey-eaters - Western spinebills, New Holland, white-cheeked brown and singing honey-eaters.
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: '', characteristics: 'upright, compact, tree 6 - 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun  
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Banksia prionotes')
CurrentPlant.create(name: 'Scarlet banksia', common_name: 'Scarlet banksia, Albany banksia', family: 'PROTEACEAE', description: 'Spectacular floral-spikes, quick growing plant, readily succumbing to phytophthora. Widely cultivated.', synonym: '', subspecies: '', location_name: '', general_info: 'Found growing in deep white or grey sand in tall shrubland and in low woodlands.', additional_info: 'Latin coccineus (scarlet) referring to the styles. Type collection from King George Sound, in 1801 by Robert Brown. 
Its natural range spreading from Albany to the Stirling Range and to the Young River', identification: 'Leaves are scattered, oblong, truncate 3-9cm long, 2-7cm wide, shortly dentate, shortly petiolate (deep green above and pale whitish below). New growth is pink-brown, and velvety to touch. Inflorescence terminal, squat 3-6cm long, 8-10cm wide at flowering, sitting on a rosette of leathery leaves. Flowers grey or the hairs in upper flowers brown; styles scarlet. Old flowers soon falling, follicles small and inconspicuous, elliptic.', physical:'- Ovate, toothed, green foliage.
- Showing large, 3-6cm wide, red, globular spike flowers. Flowers during June - January [spring, winter].
used for cut flowers or floral art
- Large, 3-6cm wide fruit. Fruits are squat. Fruiting bodies are inconspicuous in their abundance.
- Medium, 1-2cm wide, winged seeds.
- Commonly smooth, thin and grey. Branches are thickly coated with soft matted fur.', horticulture: '- Killed by fire and will regenerate from seed. Variants with slightly different colours are currently being tested for cultivation. Very difficult to establish in the eastern states, may need limestone chips layered beneath (10-15cm layer at 30cm depth) 
- low maintenance required. Fast growing, little-branched, often reluctant to flower in cultivation. Needs conditions as near to its natural habit as possible, i.e. deep sandy soil in a warm area with good winter rainfall and a dry summer.
- minimal - light pruning necessary, not below green foliage. Prune to improve shape of shrub and increase flowering.
- seed - collect seed from old flower-spikes, which fall from the bush. Follicles opening with fire.
- Phytophthora cinnamomi (dieback) - sensitive to dieback
readily available. one of the best known banksias and is widely cultivated and used extensively in the cut flower industry.', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen', culture: '', conservation: 'B.coccinea has no close relatives amongst the genus.
', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters', architectural_info: 'Spectacular conspicuous flower-spikes, second line coastal and usually frost resistant(put into env feature box). Can be made into a bonsai specimen. Will grow under the shelter of tall trees.', characteristics: 'stiff, upright, two or three to multiple stemmed, woody shrub >2m. With a open canopy and vigorous growth rate.
', environment: '- full sun   
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Banksia coccinea')
CurrentPlant.create(name: 'Sea rush', common_name: 'Sea rush', family: 'JUNCACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Widespread wetland sedge. Covers extensive areas. Tussock 0.8 - 1.5 m high. Stems circular in cross section (2-4 mm) with continuous pith. Few basal leaves, similar to stems with sharp apex. Inflorescence has clusters of 3-15 dark brown flowers, flowers have 6 floral segments.', physical:'- Mostly thin stems, dark green foliage.
- Showing a minimal display of medium, 35-125 mm inflorescencecm wide, brown, clusters of 3-15 brown flowers flowers. Flowers during September - December [spring].
- Small, brown fruit. Fruits are dark brown capsules. Fruiting bodies are minimal in their abundance.
- Small, brown seeds. Seed is inconspicuous in its abundance.', horticulture: '- low maintenance required.
- division - Transplant rhizomes - cut back leaves to 10 cm to reduce water loss. Preferably transplant during dormant season (May - June). Can direct seed.
- readily available.', architectural_uses: '- coastal plant - secondary
- drought resistant
- groundcover suitable to dominate large expanses
- reduces erosion - soil binder
- waterside position
- wetland plant', culture: '', conservation: 'Widespread wetland sedge. Fringes streams and lakes. Growns in freshwater, brackish or saline conditions.', wildlife: '', architectural_info: '', characteristics: 'tussock forming, 30 cm to extensive, Perennial sedge < 1m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- one drop - water during establishment.
- Prefers all types soils, with a neutral to acidic pH.
- Wind Tolerant 
- Salt Tolerant', scientific_name: 'Juncus karusii (incomplete)')
CurrentPlant.create(name: 'Sea-urchin hakea', common_name: 'Sea-urchin hakea', family: 'PROTEACEAE', description: 'attractive foliage contrast (blue - green, silvery foliage) and red pin-cushion flowers', synonym: '', subspecies: '', location_name: 'UWA Campus: Sunken Garden
', general_info: 'Growing on granite outcrops. Adaptable to most soils.', additional_info: 'The specific name of petiolaris is derived from Latin, meaning \'with distinctive petiole\'.
Extends from Perth to Hyden.', identification: 'Young shoots are covered in silky hairs, striate or ribbed. Leaves are dull glaucous (pale blue-green) (slightly paler beneath), coriaceous, petiole 1-1.5cm long, blade is elliptic to almost circular (7-12cm long x up to 5.5cm wide) with 3-5 conspicuous parallel viens, base narrowed almost abruptly. Flowers are in clusters in the upper axils (almost sessile). Calyx pink or red 6-7mm long, style white or cream 12mm long (floral head resembles a dull red pin-cushion). Fruit, ovoid, (2.5-3.3cm long x 1.4-2cm wide), woody, has a rough surface and ends in a blunt point (straight beak at apex). Seed wing surrounds the body.
Note the flowers resemble H. laurina.

Mainly found growing on the Darling Range east of Perth.', physical:'- Attractive, broadly ovate, dull green-, silver foliage.
- Showing a moderate display of large, red, pin-cushion flowers. Flowers during May - July.
- used for cut flowers or floral art
- Medium, 2.5 - 3.3cm wide fruit. Fruits are ovoid, rough, woody.
- winged seeds.', horticulture: '- prune after flowering - Minimal or light pruning from an early age helps to shape this shrub. Often causing a thicker growth form (not necessarily a greater flower production). Best to prune post flowering.
- seed - Propagated easily from seed which can be collected from the woody fruits (seed can be collected at any time of the year, the fruit being kept in a jar in a warm spot until it opens). Sow seed into a friable media (lightly cover the seed) and keep in a warm moist environment.', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
ornamental plant
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters', architectural_info: '', characteristics: 'upright, woody shrub >2m. With a vigorous growth rate.
', environment: 'full sun
one drop
Prefers well drained soils with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Hakea petiolaris')
CurrentPlant.create(name: 'Showy honey-myrtle', common_name: 'Showy honey-myrtle, Western tea-myrtle', family: 'MYRTACEAE', description: 'attractive and long flowering bushy shrub', synonym: '', subspecies: '', location_name: 'UWA Campus: Biological sciences library
Picture 2 Little Ness without watering.', general_info: 'A hardy plant, adaptable to most soils and conditions, liking plenty of moisture and tolerating temporary inundation. Preferring gravelly or sandy soils. Appears to be adaptable to the tropics.', additional_info: 'Greek nesos meaning \'an island\' and philos meaning \'loving\'; referring to its luxuriant growth on Doubtful Island, Western Australia, where it was first recorded. 
Native distribution along the south-coast of Western Australia (Eyre district), and neighbouring islands including Doubtful Island.', identification: 'Leaves are bright green to grey-green, simple, alternate, smooth, elliptic to oblong-obovate 1-2cm long (sometimes larger), apex acute often mucronate, margin entire, venation indistincly 3-nerved, coriaceous but brittle, aromatic when crushed. Many or single globular (pompom-like) terminal floral heads 2.5-3cm across, made up of 20-30 flowers. The early buds being green with a purplish apex, compacted into a 7-10mm head, stames in 5 clawed bundles with 10-12 filaments to 1cm long. Flowers are deep violet, purple-pink (aging to nearly white) with prominent yellow or creamy-white anthers. Fruits are clustered into an ovoid head which can be quite variable, generally 2cm or so long.', physical:'- Attractive, small, elliptic to oval, green foliage.
- Showing a moderate display of small, 2.5 - 3cm wide, pink, pompom-like flowers. Flowers during November - February [summer].
used for cut flowers or floral art
- Small, 2cm wide fruit. Fruits are clustered ovoid head.
- grey-ish white and papery.', horticulture: '- Makes an effective screen or windbreak (i.e. a thick dense canopy) if planted closely and watered well. Responding well to regular pruning.
- low maintenance required. Moderately frost resistant (to -7 degrees C grass temperature), however also noted to be frost tender. Tolerant to Phytophthora cinnamomi. Very lime tolerant.
- minimal - should be lightly pruned after flowering to shape the bush. Note it can be grown as a small tree by removing lower branches.
- readily available. commonly cultivated', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
freeway sites
ornamental plant
potted specimen
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
when in flower', architectural_info: 'well suited to tall screening and placement at the back of native gardens.', characteristics: 'erect, stiff, bushy, woody shrub >2m. With a dense canopy and vigorous growth rate.
', environment: 'full sun   
one drop
Prefers all types, well drained soils.
Frost Tolerant
Salt Tolerant', scientific_name: 'Melaleuca nesophila')
CurrentPlant.create(name: 'Silky eremophila', common_name: 'Silky eremophila', family: 'MYOPORACEAE', description: 'attractive silvery woolly shrub with contrasting pink-lilac flowers in spring', synonym: '', subspecies: '', location_name: '', general_info: 'will grow in light to heavy soil', additional_info: '', identification: 'The bush has a silvery woolly appearance (due to the branches, new growth and leaves all being covered in white hairs). Leaves are greyish, linear to 2cm long. Flowers are lilac, borne in spring.', physical:'- Attractive, linear, grey-, silver foliage.
- Showing a profuse display of small, pink, tubular flowers. Flowers during September - November [spring].', horticulture: '- often grafted onto Myoporium rootstock
- low maintenance required. moderately frost resistant
- minimal - trim to maintain bushy shape
- cutting - Propagation is most popular from half-ripened tip-cuttings (may require the application of a low-strength rooting hormone) in autumn. Generally strike readily without mist. Grow cuttings for a year before planting out.
- fungal attack - Fungal attack is known to damage leaves and branches (browning and subsequent defoliation of the leaves), damaged specimens need to be isolated and treated with fungicide.
insect attack - Pests include scale, which can be managed with white oil.
- slugs and snails - Caterpillars and flea beetles may cause seasonal damage and should be watched.
- readily available. very popular', architectural_uses: 'ornamental plant
potted specimen
rockery plant', culture: '', conservation: 'conservation status of 2E - i.e. its geographic range is less than 100km, it is classified as endangered (at serious risk of disappearing from the wild in 10-20 years).', wildlife: '', architectural_info: 'silver foliage provides a good contrast in the garden. Very striking when planted at high density.', characteristics: 'upright, rounded, woody shrub 1 - 2 m. With a dense canopy.
', environment: 'full sun   
one drop - may require summer watering.
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Eremophila nivea')
CurrentPlant.create(name: 'Silky heads', common_name: 'Silky heads', family: 'POACEAE', description: 'tufting grass with blue-green foliage topped with attractive silvery-white floral spikes summer - autumn', synonym: '', subspecies: '', location_name: '', general_info: 'Tolerates most soils and aspects', additional_info: '', identification: 'Tuft forming grass. Flat, blue-green, aromatic leaves to 30cm long. Leaves are basal, with rounded flower stems which bear alternate long narrow leaves. Flower spike is long lived, erect to 80cm. Each floral spike is surrounded by masses of white hairs. Flowers are bisexual (male and female parts on same spikelet). Flowering Nov-Jan, with spikes lasting until late autumn.
Found in the Darling Range from the Chittering Valley to Darlington. Extends north of Perth to the Kimberley Region, inland to the border with South Australia and the Northern Territory', physical:'- Attractive, flat, blue-, aromatic, green foliage.
- Showing a moderate display of large, white, erect floral spike, silvery- flowers. Flowers during December - May [summer, autumn].', horticulture: '- Generally die down in winter and reshoot in spring, during dormancy the area should be kept free of weeds but not dug over. Will seed itself readily, though is unlikely to become a pest.
- Low maintenance required. tolerant to Phytopthora cinnamomi.
- Minimal - Dead foliage can be pruned during dormancy
- Seed - Propagate by seed in spring. Readily self seeds.', architectural_uses: '- drought resistant
- rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'Creates a natural effect in the garden. Providing a soft vertical accent amongst rocks, giving a contrast to borders or rockeries.', characteristics: '- Tufted
- Perennial grass < 1m.', environment: '- Full sun  
- One drop
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Cymbopogon obtectus')
CurrentPlant.create(name: 'Silky oak', common_name: 'Silky oak', family: 'PROTEACEAE', description: 'Stunning display of large yellow-orange flowers. Good conical shape.', synonym: '', subspecies: '', location_name: 'Tropical Garden, Stirling Hwy underpass', general_info: '', additional_info: '', identification: 'Conical tree - largest of all the grevilleas. Fern-like leaves 15-25 cm long. Dense toothbrush spikes of yellow-orange flowers.', physical:'- Attractive, Fern-like, 10-25 segments divided 15-25 cm long, green foliage.
- Showing a profuse display of 7-10cmcm wide, gold, one sided racemes flowers. Flowers during October - December.
-~ 2cm longcm wide, brown fruit. Fruits are slender beak with flat, oval seed.
- furrowed and fissured with corky outer layer', horticulture: '- grows rapidly from seed seldom exceeding 16m in height. Rich moist soils preferred in warm situations. Adaptable.
- readily available.', architectural_uses: 'shade tree
street tree
waterside position', culture: 'WIdely gorwn around the world as a street tree. Not used a lot in Perth.', conservation: 'Bird attracting.', wildlife: '', architectural_info: 'Stunning tree when in flower, has large yellow-orange toothbrush-like spikes. Display visiable from a distance. Tree has good conical shape. Useful as a specimen tree. Widely used as a stretscape tree around the world.', characteristics: 'Large tree, 20-30 m, 15 m, tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun  
- three drop
- Prefers all types, well drained soils, with a neutral to acidic pH.', scientific_name: 'Grevillea robusta')
CurrentPlant.create(name: 'Silver cassia', common_name: 'Silver cassia, Wormwood senna, Feathery cassia, Desert cassia', family: 'CAESALPINIACEAE', description: 'Creates a good foliage contrast in the garden. Yellow buttercup flowers are produced over a long period. Rampant grower - covers areas quickly.
', synonym: 'Cassia oligophylla', subspecies: '', location_name: 'UWA Campus: Sunken Garden', general_info: 'Naturally found growing in the dry interior growing on grasslands and plains adjacent to rocky outcrops and watercourses. Require coarse well aerated soil. Soil should be kept at a low but uniform water status.', additional_info: 'The specific name of artemisioides is Latin for \'like Artemisia\'. The common name of \'Silver cassia\' is due to the silky-white down which covers the shrub giving it a \'silver appearance\'. In addition to the above, this plant is also commonly known as \'Limestone senna\' and as \'Puntilirri\' by the Aborigines in the Balgo area.

Generally found in the central and northern region of Australia (below the tropic of Capricorn), in rainfall areas of 250-350 mm per annum.', identification: 'This species has been split into 11 subspecies, all of which hybridise freely, making this plant difficult to classify. The general features of S. artemisioides are listed below.
Leaves are silver grey pinnate 5-6cm long (each leaf having 6-14 leaflets in 5-7 opposite pairs, up the stem, leaflets are linear, tapering at the base, to 2cm long x 1-1.5mm wide), folded to form a channel above, covered in a silky-white down, giving it a \'silver appearance\'. Leaves are firm and leathery. Peduncle 0.5-2cm long. Yellow buttercup-shaped flowers are in short sprays 3-7cm long (6-20 flowers) from leaf axils, and have a delicate perfume. Flowering abundantly from August to December, sparsely in summer and autumn. Fruit is a flat oblong or curved pod (5-10 long (up to 15cm) x 1.5-2.5cm wide) holding 12 flat oblong dark dull seeds at maturity. The pod splits on drying to expose the seed.

Note the leaves, upper stems and inflorescence are covered with silver grey hairs.', physical:'- Attractive, feather-like, silver foliage.
- Showing yellow, sprays of buttercup flowers. Flowers during June - December [spring, winter].
perfumed
- Large, 5 - 10cm wide fruit. Fruits are flat oblong to curved pod.
- Small, 0.5cm wide, brown, flattish, oval seeds are seen during June, July.', horticulture: '- low maintenance required. requires protection from severe frosts (can tolerate temperatures to -5 degrees C) (hardier than most other senna species), tolerates lime soils. All species do well from extra feeding when grown on infertile soils. Best grown protected from strong winds. Containerised specimens should be watered well when in full growth, sparingly in winter.
- prune after flowering - Pruning is minimal, with light pruning post flowering only necessary to maintain compact shape. Remove a quater of the current year\'s growth. Shrubby species may require initial tip-pruning to help establish a bushy habit.
- seed - Propagation is from seed. Prior to sowing, seeds must be scarified or heat treated (soaked in 30-35 degrees C water for 24 hrs) to break through the hard seed coating. Seeds should be sown in spring in a warm, moist environment. Seedlings require non-humid conditions.
- insect attack - Susceptible to attack from borers, which may be detrimental if left unchecked.
- readily available. subspecies available include;
S.a.nothosubsp. artemisioides
S.a. subsp. filifolia
S.a. nothosubsp. sturtii', architectural_uses: 'coastal plant - secondary
drought resistant
fence screener
potted specimen
windbreak', culture: 'Ingestion of this plant is not recommended. The bark and foliage is known to be a strong laxative.
Aboriginal populations instead boiling the green leaves in water, making a \'wash\' to help ease fevers. This wash is generally red in colour.', conservation: '', wildlife: 'Attracts:
birds, insect-eaters 
butterflys', architectural_info: 'good as a low screen or windbreak plant. Foliage contrast. Fodder plant (extra feed for sheep and cattle).', characteristics: 'wiry, irregular to spherical shaped, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.
', environment: 'full sun   
one drop
Prefers sand, well drained soils.
Frost Tolerant
Salt Tolerant', scientific_name: 'Senna artemisioides')
CurrentPlant.create(name: 'Smooth-barked Apple', common_name: 'Smooth-barked Apple, Sydney red gum', family: 'MYRTACEAE', description: 'Quick growing, ornamental tree for large gardens and parks. Note : Rampant grower, may create a problem in small gardens.', synonym: 'A. lanceolata', subspecies: '', location_name: 'Recreation Centre Car park', general_info: 'Will grow in most soil types. Naturally found on sandstones, gravels and heathlands between the coast and mountain ranges.', additional_info: 'costa is Latin for \'a rib\' and referrs to the ribbed fruits of this plant.
Being naturally distributed from southern Queensland to New South Wales.', identification: 'Leaves are dark green, simple, opposite, lanceolate to 10-16cm long 2-3cm wide, apex is finely acuminate, margin entire, midrib yellowish and prominent, new spring to summer growth being an attractive copper-red colour turning mid-green with age. Inflorescence is a terminal corymb, calyx tube campanulare to 1cm long, densely hirsute, ribbed exterior, sepals 5, petals 5 (longer than sepals), whitish cream, numerous stamens cream to 1cm long. Flowering from November to late January (summer). Fruit is a soft woody capsule 1.5cm long which is ribbed with apical teeth. The disc is depressed below the rim, the ovary with 3-4 cells with large flat seeds.', physical:'- Attractive, lanceolate, aromatic, dark green foliage.
- Showing a profuse display of medium, white, large clusters flowers. Flowers during December - February [summer].
- Medium fruit. Fruits are bell-shaped ribbed capsule.
- Large, flat seeds.
- pale grey smooth bark is pitted, new bark being colourful (red, salmon and pink). Massive trunk to 1m thick., noted for its attrative trunk.', horticulture: '- Rampant grower, may create a problem in small gardens.
- low maintenance required. when young needs some protection from frosts. Cannont withstand strong winds as the timber is somewhat brittle. Moderately lime tolerant. Tolerant of Phytophthora cinnamomi.
- minimal - Early pruning to establish a single trunk or control the growth form of the lateral branches may be necessary
- seed - Propagation is from ripe seeds (shed 4 - 6 months after flowering) which are sown into a light, fibrous material and kept in warm humid environment.
- readily available.', architectural_uses: 'branch dropper
coastal plant - secondary
drain clogger
ornamental plant
shade tree
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters 
birds, seed-eaters', architectural_info: 'Best for large gardens or parks due to its size. Fruit capsules may be used in dried flower arrangements of floral art. Fire retarder. Firewood tree. Fodder tree.', characteristics: 'handsome, spreading, tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun
- partial shade  
- one drop
- Prefers all types, well drained soils.
- Frost Tolerant', scientific_name: 'Angophora costata')
CurrentPlant.create(name: 'Snakebush', common_name: 'Snakebush', family: 'LAMIACEAE', description: '', synonym: '', subspecies: '', location_name: 'UWA Campus: Taxonomic Garden', general_info: '', additional_info: 'Extending from Kalbarri south to Albany.', identification: 'Several growth forms of this plant exist, most common is the prostrate or sprawling form.
Branches are wiry and straggly. Leaves are rigid, sessile, linear to narrowly ovate or narrowly triangular (0.7-4.2cm long x 0.1-0.6cm wide) glabrous or hispid (stiff white bristle-like hairs), narrowing to a sharp point (pungent). Prominently 3-veined below. Corolla white, pink or lilac with dark spots on the throat (1.2-3.7cm long) with 5 spreading lobes. Style exserted. Flowering in spring - summer, often year round. Fruits is a 2-lipped calyx (0.5mm-1cm long) which encloses 4 nuts.

Highly variable species; size and shape of leaves and their degree of hairiness, and the size of flowers. Darling Range specimens tending to be hispid with narrowly ovate leaves. Coastal plain specimens being glabrous or shortly hispid with narrowly triangular or linear leaves. Another variant found between Eneabba and Kalbarri has ovate, subcordate, abruptly pungent leaves.

Widespread on the Coastal Plain and on the Darling Scarp and Range.', physical:'- Irritating, narrow, stiff, pointed, green foliage.
- Showing a minimal display of small, pink, dark-spotted flowers. Flowers during September - February [spring, summer].
- Small, 0.5 - 1cm wide fruit. Fruits are 2-lipped calyx.', horticulture: '- plant at 60cm centres. Often short-lived in cultivation - especially on the east coast (Sydney).
- cutting - half-ripened tip cuttings in autumn
- seed - seed (germinate easily)', architectural_uses: 'basket plant
coastal plant - secondary
groundcover
groundcovers for small areas between shrubs or driveway strips
potted specimen
rockery plant
trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rigid, prostrate to erect, or sprawling, woody shrub < 1m.
', environment: 'full sun   
one drop
Prefers sand, well drained soils.', scientific_name: 'Hemiandra pungens')
CurrentPlant.create(name: 'Spider net grevillea', common_name: 'Spider net grevillea', family: 'PROTEACEAE', description: 'long flowering', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Leaves can be either simple linear or 2-3 lobed (2cm long). Flowers are waxy, red, borne terminally in pedulous clusters in winter and spring (sometimes in late autumn)', physical:'- Simple or lobed, green foliage.
- Showing a moderate display of small, red, pendulous, waxy flowers. Flowers during June - November [spring, winter].', horticulture: '- low maintenance required. Moderately lime tolerant. Usually frost tolerant. Do not over-fertilise (especially with high P fertilisers), does benefit from light well balanced fertilisers. Containerised specimens should be watered moderately, less in winter.
- prune after flowering - Pruning regularly will create a compact and bushy form. 
- cutting - Half-ripened tip-cuttings should be taken in early to mid summer (when young growth has started to harden), autumn or winter. Strike into a sand/peat mix and keep in a warm humid environment (may be advantageous to wound the base to the depth of the cambium, apply a hormone treatment - root promoting dust is beneficial, mist sprays and bottom heat are also recommended for most species). Note once strike or seedling has established be careful not to disturb the roots when planting out.
- insect attack - may be damaged by leaf borers, scale insects and bugs (crusader bug).
- slugs and snails - leaf-eating caterpillars 
- readily available. prostrate forms are generally most popular in cultivation.
- Grey foliage form - long prostrate stems (frost tender)
- Green foliage form - more upright, compact ( frost hardy)', architectural_uses: 'basket plant
coastal plant - secondary
groundcover
potted specimen
rockery plant
trailing plant for walls', culture: '', conservation: 'Classified as Rare: restricted distribution. Geographic distribution is less than 100km.
', wildlife: 'Attracts:
birds, honey-eaters', architectural_info: 'the small form makes a good basket , rockery, cascading or trailing plant.', characteristics: 'variable, spreading, woody shrub < 1m.', environment: 'full sun   
one drop
Prefers well drained soils with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Grevillea thelemanniana')
CurrentPlant.create(name: 'Spider net grevillea', common_name: 'Spider net grevillea, \'Sea Spray\'
', family: 'PROTEACEAE', description: 'Useful spreading shrub, especially in coastal areas. Grey-green, finely divided foliage provides useful contrast. Good floral display of contrasting red flowers, borne terminally and pendulous.
', synonym: '', subspecies: 'presisii', location_name: '', general_info: 'Coastal plant often found in heathland over limestone. Perth to Geraldton. prefers well-drained soil.', additional_info: '', identification: 'Dense shrub to 1 m with finely divided grey-green foliage. Leaves 60 mm x 40 mm divided into narrow lobes (3-5).', physical:'- Attractive, Foliage grey green, finely divided, light green foliage.
- Showing a moderate display of medium, 1.5 cmcm wide, red, CPendulous custers of many flowers flowers. Flowers during July - September.
- Medium, 1.5 - 1.7 cmcm wide, brown fruit are displayed during September, October. Fruits are Ribbed or ridged oblong. Fruiting bodies are inconspicuous in their abundance.', horticulture: '- Selections available \'Sea Spray\' 
- low maintenance required.
- cutting - TAke cuttings from firm current season\'s growth. Slow to strike. Use rooting hormones.
- readily available.', architectural_uses: 'coastal plant - secondary
cottage plant
groundcovers for areas where some height is required
ornamental plant
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'Useful spreading shrub, especially in coastal areas. Grey-green, finely divided foliage provides useful contrast. Good floral display of contrasting red flowers, borne terminally and pendulous.', characteristics: 'Dense shrub, up to 1.5m, woody shrub < 1m. With a dense canopy and vigorous growth rate.
', environment: 'full sun
partial shade
one drop
Prefers all types soils, with a neutral to alkaline pH.
Wind Tolerant', scientific_name: 'Grevillea preisii \'Grevillea thelemanniana')
CurrentPlant.create(name: 'Spider plant', common_name: 'Spider plant, Hen-and-chickens', family: 'LILIACEAE', description: 'attractive grass-like variegated foliage, good groundcover plant which spreads with rhizomes or plantlets', synonym: '', subspecies: '', location_name: 'Student Admin east side, West side of Arts', general_info: 'Requires a bright position away from direct sunlight, likes fertile soil.', additional_info: '', identification: 'Narrow leaves are long, to 45cm, and spread from a central rosette. Long thin stems (to 60cm) carry white star shaped flowers (inflorescence is a raceme) year-round. Small rosettes of leaves appear on flower stems forming \'plantlets\'. Short rhizome.', physical:'- Attractive, grass-like, light green foliage.
- Showing a minimal display of small, white, star-shaped flowers. Flowers all year round.', horticulture: '- low maintenance required. Requires a bright position away from direct sunlight. Frost tender, minimum temperature to 5 degrees C. If containerised water well in the growing season, less at other times.
- division - Propagate by division or plantlets (produced on flower-stems of some species) during autumn, spring or summer.
- readily available. \'Vittatum\' is a variegated cultivar - leaves white and green striped.', architectural_uses: '- basket plant
- groundcovers for small areas between shrubs or driveway strips
- indoor plant
- potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'dwarf, tufted, Perennial herbaceous shrub < 1m.', environment: '- partial shade
- tolerates full shade
- Prefers well drained soils.', scientific_name: 'Chlorophytum comosum')
CurrentPlant.create(name: 'Spiny-headed mat rush', common_name: 'Spiny-headed mat rush', family: 'XANTHORRHOEACEAE', description: 'graceful, arching foliage plant.', synonym: '', subspecies: '', location_name: 'Agriculture Gardens, Western underpass', general_info: 'copes with damp soils (poorly drained areas), tolerates temporary inudation.', additional_info: '', identification: 'Foliage is dark green, narrow, strap-like (tussock/ grass-like), slightly stiff and arching (note leaves have several points at the apex). Creamy, fragrant flowers are borne in spikes in spring to early summer (flower stalk is flattened). Male and female flowers are on separate plants (dioecious).', physical:'- Attractive, narrow, strap-like, dark green foliage.
- Showing large, white, floral spike perfumed flowers. Flowers during September - November [spring].
- Used for cut flowers or floral art
- Showing a inconspicuous display of flowers.', horticulture: '- Low maintenance required. this plant requires little care and attention (can be grown in an area of low maintenance) 
- Seed: from fresh seed in autumn
- Readily available', architectural_uses: '- Coastal plant (secondary)
- Potted specimen
- Reduces erosion (soil binder)
- Rockery plant
- Waterside position', culture: '', conservation: '', wildlife: 'Attracts
- Birds
- Seed eaters 
- Butterflies 
- Trapeziles symmomns 
- Trapeziles eliena.
', architectural_info: 'tufted plant (adds a vertical or arched line to a garden bed).', characteristics: '- Grass-like, arching, clump-forming
- Perennial herbaceous shrub < 1m.
', environment: '- Full sun
- Partial shade
- Tolerates full shade
- One drop
- Prefers all types soils.
- Frost Tolerant', scientific_name: 'Lomandra longifolia')
CurrentPlant.create(name: 'Spotted gum', common_name: 'Spotted gum', family: 'MYRTACEAE', description: 'Tall, attractive, straight trunked tree with interesting smooth spotted bark. C. maculata is a rampant grower and will cover an area rapidly, and may cause havoc in small gardens or areas already planted.', synonym: 'Eucalyptus maculata', subspecies: '', location_name: 'Recreation Centre carpark, N side of Economics', general_info: 'Spotted gum occurs mainly on heavy soils, dominantly clay loams derived from shales (eastern States). It will tolerate temporary inundation, if not prolonged.', additional_info: 'Latin maculatus meaning \'spotted\', referring to the spotted appearance of the trunk. 
Originating from the central coast and adjacent ranges of eastern Australia. NSW and southern QLD usually on the shaly- and sandy-loams of the coastal plain, but occasionally farther inland to the lower levels of the tablelands.', identification: 'Leaves are dark green and slightly shiny, lanceolate-falcate 15-25cm long and 2-4cm wide, petiole 1.5-2cm long, channelled above, reddish; midrib reddish and prominent; tough and pliable (coriaceous), glandular and aromatic when crushed. Inflorescence is a 3- to 7-flowered umbel, usually about 5, several umbels together forming a dense chain of panicles from the upper axils; calyx tube narrowly conical to 6mm, the operculum abruptly hemispherical to 4-5mm long, with a sharply tapered beak; stamens to 1cm long, the filaments white with cream anthers, flowers sweetly honey scented, flowering in late winter and spring but occassionally commencing in autumn. Fruit capsules urceolate 1.5cm long and 1.3cm wide, narrowing to 5-6mm at the apical orifice, valves sunken within and barely visible. 
Spotted gum is closely related to the bloodwoods, its flowers being borne in rather large compound inflorescences and its fruits being ovoid with a shrot neck and deeply enclosed valves. However its bark is dissimilar to this group. It is closely related to C. citriodora (lemon scented gum), and is distinguished by its darker green, broad adult leaves which are aromatic but have no lemon scent when crushed, larger buds and fruits, and most obviously its spotted-bark. 
Excellent specimens can be seen at the Serpentine Dame kiosk car park.', physical:'- Broad, aromatic, dark green foliage.
- Showing a moderate display of white flowers. Flowers during June - November [spring, winter].
perfumed
- 1.5cm wide, brown fruit. Fruits are barrel-shaped to urceolate.
- A smooth-bark which is pink, cream or greyish-blue and uniform from the base to the leaves, then decorticating in irregular patches and spots in late spring, leaving the surface shallowly pitted giving an attractive brown mottled effect and producing the characteristic spotted appearance (also noted for its clean-looking bark). The massive straight trunk to 1m thick in old specimens. 
- Mild fire damage may result in a bright orange colour to the butt of the tree. , noted for its attrative trunk.', horticulture: '- Has been used as a stock plant for C. ficifolia. Tolerant of Phytophthora cinnamomi. 
- low maintenance required. Frost hardy after two years, may need protection as a seedling. Moderately lime tolerant.
- seed - can be collected year round, notably in late summer and early autumn
- readily available.', architectural_uses: 'branch dropper
coastal plant - secondary
drain clogger
freeway sites
ornamental plant
shade tree
windbreak', culture: 'Often planted around homesteads due to its fire-retarding nature, likely to be due to low oil content and high moisture content together with a high ignition temperature or high salt content in leaves. 
Spotted gum also produces a good hardwood timber and is a valuable species for forestry (being most suitable for tool handles).', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters 
- mammals 
- koala\'s feed on the foliage (eastern states)', architectural_info: 'Popular throughout Perth and surrounds, being best suited to parks and large properties. C. maculata is a rampant grower and will cover an area rapidly, and may cause havoc in small gardens or areas already planted. If used as a windbreak requires a subsidiary underplanting, due to its height. Can be used as a fire-retarder and when the wood is dried it is good for firewood. Can also be grown successfully as a bonsai specimen.', characteristics: 'erect, broad, open crowned, tree > 12m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- one drop
- Prefers clay, well drained soils.
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Corymbia maculata')
CurrentPlant.create(name: 'Spreading flax lily', common_name: 'Spreading flax lily, Flax lily', family: 'LILIACEAE', description: 'Grown for their attractive clumping form and showy display of bright blue flowers and fruits', synonym: '', subspecies: '', location_name: '', general_info: 'naturally found growing in forest and woodland habitats as an understorey species. Generally very adaptable to most soils and positions, prefering some shade and moisture', additional_info: 'Commonly referred to as \'Flax lilies\' due to their tough, fibrous, strap-like leaves, which can be easily separated and plaited.', identification: 'Highly variable tuft-forming herbaceous plant which occurs throughout Australia an has been divided into 6 varieties.
Leaves are almost flat, dull blue-green with slightly revolute margins (i.e. the margin curls directly downwards toward the mid-rib of the underside). The leaf margin is yellow-green. The leaf blade is rigid with and V shaped towards the base. Leaves are several per shoot, being basal (clustered at the base of the plant) or on stems (more evenly spaced). Stems are erect and rigid. Pale blue star-shaped flowers 1cm wide (with prominent yellow anthers) are held in panicles on thin wiry stems up to 1m tall. Flowering in spring and early summer. Dark blue rounded or egg-shaped berries (8mm long) are seen after flowering (at the ends of the stems). Seeds are few and shiny. Roots are fibrous.

Wide ranging and common on the Coastal Plain and Darling Range. Extending from Carnarvon and Laverton to the south coast and east to the Nullarbor plain.

Note this species is often confused with the other Western Australian species D. divaricata.', physical:'- Flax-like, blue, green foliage.
- Showing a profuse display of small, 1cm wide, blue, star-shaped flowers. Flowers during September - December [spring].
- Small, 0.8cm wide, blue fruit are displayed during January, February. Fruits are egg-shaped berry. Fruiting bodies are profuse in their abundance.
- Small, shiny seeds.', horticulture: '- This plant forms new shoots from rhizomes (spreading underground stems). These suckers may appear some distance from the parent plant, allowing the clump to spread quickly. 
- low maintenance required. Very lime tolerant.
- division - divide (or use rooted offsets) in spring or autumn
seed - Propagation is from fresh ripe seed in spring or autumn.
- readily available.', architectural_uses: '- coastal plant - primary
- potted specimen
- rockery plant
- waterside position', culture: 'The blue berries can be eaten raw, while the roots (rhizomes) need to be pounded and roasted first.
The fibre in the leaves is very strong with a silky texture. Baskets may be weaved from the leaves.', conservation: '', wildlife: 'Attracts:
- birds, seed-eaters', architectural_info: 'attractive upright or arching foliage can be used to soften courtyard and paved areas creating the bush effect of many grasses, sedges etc. Creates a good contrast with groundcovers and shrubs. Can be planted along path edges, against trees.', characteristics: 'clumping, spreading, Perennial herbaceous shrub < 1m.', environment: '- partial shade
- one drop
- Prefers all types, well drained soils, with a neutral to acidic pH.
- Frost Tolerant', scientific_name: 'Dianella revoluta')
CurrentPlant.create(name: 'Sugar gum', common_name: 'Sugar gum', family: 'MYRTACEAE', description: 'Hardy medium to large tree', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'clados meaning \'shoot or branch\' in Greek and EM>calyx referring to the inflorescence. Referring to the flowers occuring on leafless branchlets, which are hence generally hidden inside the crown. 
Originating on the eastern shore of Eyre Peninsula, on Kangaroo Island and in the lower Flinders Ranges in the Port Augusta, Peterborough, Hawker area.', identification: 'Notable for the mottled, somewhat colourful yellow to orange bark. Juvenile leaves are opposite, nearly orbicular 5-6cm long pale shining green, mature leaves are alternate, lanceolate-falcate, 10-15cm x 2-4cm, the petiod 1-1.5cm long. Leaves are bright shining green above, pale beneath, midrib is yellowish. Buds pedicellate, cylindrical or contracted about the middle, often ribbed plae green or creamy 0.8-1 x 0.3-0.6cm, scar present. Flowers are in axillary, unbranched umbels of mostly 7-9 on 1-2cm peduncle (on leafless branchlets inside the crown), calyx cylindrical 1cm long 5mm wide, slightly ribbed, creamy-white with reddish shading; operculum squat, cap-like with a short mucro; stamens numerous, filaments creamy-white, anthers deeper cream. Fruit capsules are ovoid or barrel shaped to 1cm long, distinctly ribbed and contracted at the mouth to a 2-3mm opening, the short valves are barely visible within. Seed light grey-brown, compressed-ovoid, often pointed at one end, slightly flanged, almost smooth.', physical:'- Long, narrow, aromatic, dark green foliage.
- Showing white flowers. Flowers during December - February [summer]. perfumed
- 1cm wide fruit. Fruits are ovoid to urn shaped fruit capsules.
- Small, brown, compressed-ovoid grey- seeds.
- Smooth bark on the main trunk is colourfully mottled pale yellowish, bluish to orange, decorticating in irregular patches. Juvenile twigs are crimson., noted for its attrative trunk.', horticulture: '- Generally tolerates very dry conditions, but may require additional irrigation if planted in dry more arid regions. Tolerant to Phytophthora cinnamomi. Moderately lime tolerant. Frost tender.
- low maintenance required.
- minimal - not improved by lopping when mature, is responsive to careful pruning in youth, to thicken crown.
- seed - seed can be collected year round, generally in May.
- readily available.', architectural_uses: 'ornamental plant
shade tree', culture: '', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters', architectural_info: 'Nobel appearance, but due to its large size it is only suitable for large parks. Although a dwarf variety E. cladocalyx var. \'nana\' is suitable as an ornamental tree for larger gardens and road-side verges (as seen at Carine Lakes Open Space in Perth). Firewood and fodder tree.', characteristics: 'erect, spreading, tree > 12m. With a open canopy and vigorous growth rate.', environment: '- full sun
- one drop
- Prefers all types soils.
', scientific_name: 'Eucalyptus cladocalyx')
CurrentPlant.create(name: 'Swamp banksia', common_name: 'Swamp banksia', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'A middle-zone wetland species found on the coastal plain and on the Darling Range . It is widely distributed in the forested areas of the south-west. However it is displaced by a close relative B. seminuda along major rivers of the lower south-west. Found in low-lying winter damp ares in sand or peaty sand.', additional_info: 'latin littoralis (of the seashore) as it was discovered near the shores of King George Sound, by Robert Brown in 1801 or 1802. 
Its natural distribution from Mt Lesueur to Cape Leeuwin and east to Two Peoples Bay and the Stirling Range, Western Australia.', identification: 'Found in or around swamp or wetland areas (often with M. preissiana) and hence often has a more luxuriant appearance than many other Perth banksias. It has denser foliage and greener leaves (on the upper side) and pure white undersides, the foliage appearing to change from green to white when wind sweeps through. Leaves are scattered, very narrow, 10-23cm long and 0.5-1cm wide, the margins recurved, serrate towards the apices or almost entire. New growth is pale green. Inflorescence is terminal, cyclindrical 7-20cm long by 6-7cm wide at flowering, usually with a whorl of branchlets below, and held within the foliage. Old flowers soon falling, leaving fruit with follicles behind. 
Distinguished from B. attenuata by its different flowering period, the position of its flower spikes and its occurrence only on swampy ground.', physical:'- Narrow, thin, dark green foliage.
- Showing a moderate display of large, 7-20cm wide, yellow, cylindrical flowers. Flowers during March - July [autumn].
- Large, 7-20cm wide fruit.
- Medium, 1-2cm wide, winged seeds.
- rough, friable', horticulture: '- Adaptable species in cultivation. It grows well in parks and gardens that receive extra water or have a high watertable. It grows well in lawns and tolerates / benefits from the necessary watering. It also seems to tolerate some fertilising, though care should be taken
- low maintenance required.
- minimal - though may be heavily pruned to maintain desired shape.
- seed - average strike rate from propagule 50%, best establishment from seedlings. No information currently available on time taken from propagation to field ready, or on establishment success rates.
- insect attack - Beetles from up to 8 different families are associated with B. littoralis. Jewel beetle, Cyria vittigera, feeds on the leaves while its larva burrow into the trunk. Weevil larvae eat the seeds found within the cones while moth larvae utilise the spikes, leaves, cones and stems.
- not readily available.', architectural_uses: 'potted specimen
', culture: '', conservation: 'Fire tolerant, sprouting from the trunk and branches. 
It is related to B. seminuda which has broader leaves, B. verticillata, a shrubby species with thicker entire leaves, and B. occidentalis with narrower leaves and red styles.', wildlife: 'Attracts:
- birds, honey-eaters - As B. littoralis flowers in winter it is an important source of nectar.
- birds, seed-eaters', architectural_info: '', characteristics: 'stout, spreading, tree 6 - 12m. With a dense canopy.', environment: '- full sun
- three drop', scientific_name: 'Banksia littoralis')
CurrentPlant.create(name: 'Swamp lily', common_name: 'Swamp lily, River lily', family: 'AMARYLLIDACEAE', description: 'Large bulbous perennial with a striking rosette of large green leaves. This native blends with exotics.
Photo 5 Broome,  Cable Beach Resort', synonym: '', subspecies: '', location_name: 'Taxonomic garden, Student Admin Garden', general_info: 'requires a moist position, preferring fertile soil. Will tolerate boggy soil (temporary inundation) and will grow on sandy soil.', additional_info: 'Distributed in the tropical northern regions of Australia, on Lord Howe Island and islands north of Australia.', identification: 'Leaves are upright, large (90cm-1m long x 10cm wide - at the base), fleshy, strap-like, held in a rosette. Umbels of greenish-white scented flowers (10cm wide) are held in on thick stalks (to 80cm long).', physical:'- Attractive, large fleshy, strap-like, green foliage.
- Showing a minimal display of large, 10cm wide, white, lily-like floral umbel flowers. Flowers during December - February [summer].
perfumed', horticulture: '- When planting or transplanting, the neck of the bulb should be positioned above ground level. Note bulbs often reaching great depths in the ground. In general this plant prefers a sheltered position.
- low maintenance required. moderately frost resistant
- seed - Propagate from seed, either fresh (seed often germinates while the fruit capsule is still on the plant) or in spring. Note propagated plants take a few seasons to flower. 
- slugs and snails', architectural_uses: '- coastal plant - secondary
- ornamental plant
- potted specimen
- rockery plant
- waterside position', culture: '', conservation: '', wildlife: '', architectural_info: 'best grown in a wet position under trees. This native blends with exotics.', characteristics: 'clump forming, bulbous, Perennial herbaceous shrub < 1m.', environment: '- full sun
- partial shade
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Crinum pedunculatum')
CurrentPlant.create(name: 'Swamp peppermint', common_name: 'Swamp peppermint', family: 'MYRTACEAE', description: 'Good for creek lines. Sprays of white flowers on stems produce a dainty long-lasting floral display.', synonym: '', subspecies: '', location_name: '', general_info: 'Naturally occuring along stream lines or in winter-wet depressions (swamps). Will tolerate periods of temporary inudation (for up to a week after rain).', additional_info: 'linearifolia being derived from Latin linearis \'linear\' and folium \'leaf\', referring to its linear foliage. The common name of Peppermint was thought to aptly describe the fragrance of the leaves when crushed, the prefix - swamp, describing its association with moist or swampy habitats.
Collected in 1815 on the west coast of Australia.

Naturally distributed from Muchea, extending along the south coast to Cape Arid National Park, inland to Northam.', identification: 'Spreading green leaves are linear 1.5-3.5cm long 5mm broad, alternate, crowded along the stem; indistinctly petiolate (tapering towards the base). Inflorescence of tight globular heads; heads terminating very short branchlets or appearing axillary with a cluster of leaves below; relatively few-flowered; bracts inconspicous. Sepals 0.7-1.3mm long, obtuse, outside being initially covered with long and short silky hairs. Flowers 0.5cm wide with 5 white petals (petals 2-3mm); numerous along the stems, produced over much of the year. Stamens 10 with 1 opposite each sepal and petal. Ovules 2 per cell. Clustered fruiting head is globular or slightly elongate up to 10mm long, individual cup-shaped fruit being 2-3mm wide. Fruit is a woody capsule.
South of the Perth Region the species is variable, especially in regards to leaf dimensions. Which may be shorter or up to 4.5cm long, broader or narrower. Flower heads sometimes terminating a long branchlet and petals may be up to 4mm long.', physical:'- Linear, aromatic, green foliage.
- Showing small, 0.5cm wide, white, spherical clusters flowers. Flowers all year round.
used for cut flowers or floral art
- Small, 0.2-0.3cm wide, gray fruit. Fruits are woody globular to cup-shaped capsule.
- young shoots loosely, softly hairy.', horticulture: '- Adopts contorted shapes in drought stricken positions.
- prune after flowering - if necessary
- cutting - can be grown from half ripened tip cuttings
- seed - propagate from ripened seed, seed can be collected by tieing a paper bag over the immature capsules, seeds being shed soon after the flower dies.
- slugs and snails - generally pest free, may be attacked by webbing caterpillar', architectural_uses: 'fence screener
reduces erosion - soil binder
windbreak', culture: '', conservation: 'This plant has a well developed rootstock from which it can easily resprout after severe disturbances such as flooding, fires or clearing. It has therefore survived better in man made environments in the Darling Range (along creek lines) than many other native species.
', wildlife: 'Attracts:
birds, insect-eaters 
birds, seed-eaters', architectural_info: 'Good for lining creeks in farming areas, reducing gully erosion.', characteristics: 'slender branched, upright, bushy, woody shrub >2m. With a dense canopy.', environment: '- full sun 
- partial shade  
- three drop
- Frost Tolerant', scientific_name: 'Agonis linearifolia')
CurrentPlant.create(name: 'Swan River daisy', common_name: 'Swan River daisy', family: 'ASTERACEAE', description: 'good ground-cover plant with attractive white, pink or blue daisy-like flowers. This native blends well with exotics.', synonym: 'Brachycome iberidifolia', subspecies: '', location_name: '', general_info: 'commonly found growing on sand and limestone soils, having a diverse habitat from Jarrah woodlands to banksia woodlands. Preferring a sheltered spot in the garden and some root protection. Favours dry conditions, not liking overwatering, though will tolerate temporary periods of inundation.', additional_info: '', identification: 'Much branched, mound-forming annual with highly divided (to the midrib) leaves. Leaf segments are long and narrow (to 3cm long). Flowers are daisy-like (2-2.5cm wide), ranging in colour from white, pink, mauve to blue, being centred with black and gold.', physical:'- Attractive, soft, lacy, green foliage.
- Showing a profuse display of small, 2.5cm wide, pink, daisy-like flowers. Flowers during August - May [spring, summer, autumn].
perfumed', horticulture: '- In cool regions the seed should be sown in seedling trays and planted in early spring, flowering in summer. In warmer regions seed can be direct seeded into the garden in June for a floral display in spring and summer. May die back during prolonged dry periods, but will rejuvenate after watering or rain. These plants will set seed year to year. 
- low maintenance required. moderately fast growing, moderately lime tolerant. Frost tender - may require protection.
- pinch out growing tips - Pruning consists of pinching out of early shoots to encourage branching and a bushy habit 
- seed - using ripe seed
- readily available. may be bought as seed, various coloured forms are available - ranging from white, rose or purple.', architectural_uses: '- coastal plant - secondary
- groundcover
- groundcovers for small areas between shrubs or driveway strips
- potted specimen
- rockery plant', culture: 'this attractive garden plant was first cultivated in Europe in the late 1830s, being grown in English gardens in the Victorian era.', conservation: '', wildlife: '', architectural_info: 'The pretty daisy-like flowers make these plants very attractive as rockery, border, groundcover or potted plants. This floral display is especially attractive in mass plantings. They are often incorporated into native gardens to provide a \'splash\' of instant colour.', characteristics: 'erect, much branched, Annual herbaceous shrub < 1m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- tolerates full shade
- Prefers well drained soils.
', scientific_name: 'Brachyscome iberidifolia')
CurrentPlant.create(name: 'Swan River Myrtle', common_name: 'Swan River Myrtle, \'Pink Myrtle\'', family: 'MYRTACEAE', description: 'Upright woody shrub with profuse spring flowering of pink blossoms, perfumed.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Upright woody shrub. Upright branches < 1.5 m. Pink to deep rose double flowers. Profuse flowering in spring. Flowers with rounded petals and numerous stamens borne along stems. Opposite, stiff linear leaves < 25mm. Lancelin to Augusta.', physical:'- Linear to 25 mm, opposite, dark green foliage.
- Showing a profuse display of medium, 1cm wide, pink, double flowers flowers. Flowers during July - November [spring].
perfumed
- Young stems reddish-brown.', horticulture: '- low maintenance required.
- readily available. Available from Australian plant nurseries', architectural_uses: 'cottage plant
drought resistant
ornamental plant
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'Upright woody shrub with profuse spring flowering of pink blossoms, perfumed.', characteristics: 'Upright woody shrub, 60 cm, woody shrub < 1m. With a vigorous growth rate.
', environment: 'full sun   
one drop
Prefers sand, well drained soils, with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Hypocalymma robustum')
CurrentPlant.create(name: 'T. \'Paynei\'', common_name: 'T. \'Paynei\'', family: 'MYRTACEAE', description: 'Pretty flowering shrub winter/spring.
', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'Small, oval <1 cm long, aromatic, green foliage.', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: 'Small shrub profuse flowering in winter and spring. Diosma substitute.', characteristics: 'Open, slightly pendulous shrub, 1.5m, woody shrub < 1m. With a open canopy and vigorous growth rate.
', environment: 'two drop
Prefers sand, well drained soils, with a neutral to acidic pH.
Frost Tolerant', scientific_name: 'Thryptomene saxicola (incomplete)')
CurrentPlant.create(name: 'Tar bush', common_name: 'Tar bush, Poverty bush, Emu bush', family: 'MYOPORACEAE', description: 'Grown for its attractive flowers and silver-grey foliage. Long-flowering
A hardy plant which is popular in dry country areas.', synonym: '', subspecies: '', location_name: 'Agriculture garden', general_info: 'Naturally found on growing in shrubland, mallee or open woodland on red or brown loam, or on sandy limestone soils along the coast. Most forms growing on a variety of soil types in a range of environmental conditions (though prefers dry conditions).', additional_info: 'The name \'Poverty bush\', commonly used in the Murchison - Ashburton region (Pilbara, Western Australia),was coined to reflect the nutritional status of the plant. Most Eremophila species are not palatable to sheep and cattle.', identification: 'Foliage is sticky to touch (especially young growth), leaves are crowded, lance-shaped, silver-grey (1.5-6cm long x 1.2cm wide) (sometimes covered in short silvery hair). Flowers are tubular (to 3cm long), varying in colour from red - yellow / orange to red - green, showing a curved two-lipped corolla tube which broadens at the base and narrows at the lobes (the lower lobe curving back under the flower). The stamens are exerted from the corolla (easily visible). Long flowering from spring to autumn. many forms are seen in cultivation from prostrate forms (spreading to 3m) and these have a dense short hair covering, to a small shrub 1.5m tall which are hairless.', physical:'- Lance-shaped, silver foliage
- Showing a moderate display of small, 3cm wide, red, tubular flowers
- Flowers during September - May [spring, summer, autumn]', horticulture: '- Roots grow from branches which are in contact with the soil surface
- Low maintenance required. moderately frost tolerant (heavy frosts can cause death), very lime tolerant. Requires minimal care or attention.
- Minimal: pruning will encourage a bushy growth habit 
- Cutting: half-ripened tip-cuttings (may require the application of a low-strength rooting hormone) in autumn. Most strike readily without mist. Grow cuttings for a year before planting out.
- Fungal attack: Fungal attack is known to damage leaves and branches (browning and subsequent defoliation of the leaves), damaged specimens need to be isolated and treated with fungicide.
- Insect attack: Pests include scale, which can be managed with white oil.
- Slugs and snails: Caterpillars and flea beetles may cause seasonal damage and should be watched.', architectural_uses: '- Coastal plant (secondary)
- Drought resistant
- Groundcover
- Potted specimen
- Reduces erosion (soil binder)
- Rockery plant', culture: '', conservation: '', wildlife: 'Attracts
- Birds
- Honey eaters', architectural_info: 'Its use depends upon the habit of the plant. With the low growing prostrate forms being desirable as groundcovers and rockery plants.', characteristics: '- Variable
- Woody shrub 1 - 2 m
', environment: '- Full sun
- Partial shade 
- One drop
- Prefers well drained soils.
- Frost tolerant
', scientific_name: 'Eremophila glabra')
CurrentPlant.create(name: 'Taupata', common_name: 'Taupata, Mirror plant, Looking glass plant', family: 'RUBIACEAE', description: 'grown for its attractive lush, glossy, bright green foliage', synonym: 'C. baueri', subspecies: '', location_name: 'Great Court', general_info: 'prefers soil which is not overly rich, tolerates sandy soil', additional_info: '', identification: 'Leaves are broadly oval, glossy, leathery, bright green. Plants are dioecious (separate male and female plants). Inconspicuous flowers are produced in late spring. If fertilised red-orange egg-shaped berries are borne (on the female plant) from late summer to autumn.', physical:'- Attractive, glossy oval, green foliage.
- Showing a inconspicuous display of flowers. Flowers during November.
- red fruit are displayed during February - May [autumn]. Fruits are egg-shaped.', horticulture: '- low maintenance required. moderately frost tolerant
- regular pruning - Regular light pruning of bushes maintains shape.
- cutting - semi-ripe cuttings taken late summer
- seed - propagate from seed in spring, note seed production requires both male and female plants
- readily available. variegated forms available; \'Marble Queen\', \'Picturata\'.', architectural_uses: 'coastal plant - secondary
ornamental plant
potted specimen
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: 'makes good large container specimen', characteristics: 'erect, spreading, woody shrub 1 - 2 m.', environment: 'full sun   
may require summer watering.
Prefers well drained soils.
Frost Tolerant', scientific_name: 'Coprosma repens')
CurrentPlant.create(name: 'Thick leaved fan flower', common_name: 'Thick leaved fan flower, Coastal Fan flower', family: 'GOODENIACEAE', description: 'Tolerates coastal conditions. Attractive all year round. Dense shrub with dark green leaves.', synonym: '', subspecies: '', location_name: '', general_info: 'Coastal species of dunes and limestone cliffs. From north of Shark Bay to southern coasts. Tolerates salt-laden winds.', additional_info: 'Scaevola means left-handed and the arrangement of the petals is like the fingers on a hand. Scaevola was a Roman hero. He was threatened with death by fire unless he revealed a plot to assassinate Porsena, who had beseiged Rome. In reply he put his right hand into a fire.', identification: 'Low spreading shrub. Terminal spike of pale blue, scented flowers. Petals form a 5-lobed fan.', physical:'- Attractive, Oval fleshy, serrated margins, dark green foliage.
- Showing a moderate display of medium, 2 cmcm wide, blue, Loose clusters, light blue fan flowers flowers. Flowers during September - November [spring]. 
- perfumed', horticulture: '- Tolerates heavy clay soils or sandy soil. Very lime tolerant. Fast growing. Will survive without irrigation but leaves may brown off. Grows vigorously with irrigation (one drop) and maintains deep green foliage.
- low maintenance required. Fast growing.', architectural_uses: '- coastal plant - primary
- coastal plant - secondary
- drought resistant
- groundcover
- groundcovers for areas where some height is required
- ornamental plant
- potted specimen
- tolerates harsh conditions', culture: '', conservation: 'Attracts insect eating birds. Tolerates coastal conditions - wind and salt spray.', wildlife: '', architectural_info: 'Large shrub with deep green leaves. Tolerates coastal conditions. Useful Australian shrub that blends well with exotics. Attractive all year round. Light blue flowers in spring. Useful to cover large areas. Good foliage foliage contrast with grey coastal plants e.g. Leucophtyta brownii, Olearia axillaris, Guichenotia ledifolia, Conostylis candicans.', characteristics: 'Erect spreading shrub., 1.5 m, Perennial herbaceous shrub < 1m. With a dense canopy and vigorous growth rate.', environment: '- Frost Tolerant  
- Wind Tolerant 
- Salt Tolerant', scientific_name: 'Scaevola crassifolia')
CurrentPlant.create(name: 'Tree hovea', common_name: 'Tree hovea', family: 'FABACEAE', description: 'attractive purple pea-shaped flowers produced in spring
', synonym: '', subspecies: '', location_name: '', general_info: 'naturally found growing on sand and clay loam, granite outcrops and stabilised dunes. Prefers deep, fertile soil', additional_info: '', identification: 'Leaves are alternate, ovate or elliptic (2.5-10cm long x 1-3.2cm wide). Flowers are (1.2-1.7cm wide) borne in the leaf axils in spring (flowering for 3 weeks). The standard is larger than the other petals. Standard with a white or yellow \'eye\'. Pods are 2-valved, dehiscent, ovate (usually wider than long), glabrous or hairy. Seed ellipsoid with a large aril.', physical:'- Large elliptic, green foliage.
- Showing 1.2 - 1.7cm wide, pink, pea-shaped, purple flowers. Flowers during September - November [spring].
used for cut flowers or floral art
- fruit. Fruits are dehiscent.
- ellipsoid seeds.', horticulture: '- flowering period is only 3 weeks
- prune after flowering - Prune lightly after flowering, to encourage a denser form.
- seed - Propagate from seed (collect as soon as ripe). (pre-treatment : soak seed in hot water for 24 hours prior to immediate sowing, or scarification). Grow seedlings in a warm moist environment.', architectural_uses: 'potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'slender, erect, woody shrub >2m. With a open canopy.
', environment: 'partial shade
tolerates full shade
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Hovea elliptica')
CurrentPlant.create(name: 'Tuart', common_name: 'Tuart, White gum', family: 'MYRTACEAE', description: 'Too large for average gardens, better planting as a park tree.', synonym: '', subspecies: '', location_name: 'Zoology, Sunken garden', general_info: 'Highly suitable for coastal areas with sandy or calcareous soil. Will tolerate cold clay soils that are poorly drained, but not boggy or stagnant in winter, and usually dry out in summer. Can also tolerate very dry conditions (several months of prolonged hot dry weather without artificial watering). Generally used in areas with a minimum of 456mm annual rainfall. Tuart grows closer to the ocean than any other Perth eucalypt. Salt-laden winds may alter their habit somewhat, reducing height and encouraging a lower spreading form. Limestone soils which they favour (being almost entirely limited in their natural distribution to Cottesloe soils) may also reflect similar changes in growth habit due to shallow soil depth.', additional_info: 'omphos meaning \'club\' in Greek, and cephale meaning \'head\', ie club-head referring to the rounded, swollen, overlapping bud cap. 
The common name \'Tuart\' is an aboriginal name (early settlers recognising the name tooart). Also known as Duotta, a local Aboriginal name from Cunderdin. 
Collected in 1801 at Geographe Bay by Leschenault de la Tour, a naturalist on Baudin\'s expedition of 1800-04. 
Distributed in coastal and sub-coastal locations from Jurien Bay to Busselton. Being almost entirely restricted to a narrow 5-10km strip (correlating with cottesloe soil). Notable in the Ludlow Tuart Forest, north of Busselton.', identification: 'Juvenile leaves are light green above, pale below. Adult leaves greyish mid green, shiny, becoming slightly discolourous to concolourous, even on the same tree. Leaves are alternate, pedulous, lanceolate curved like a sickle, with a prominent midrib and lateral nerves spreading at a wide angle , the intramarginal nerve distinct from the leaf-margin. Buds are conspicuous club-headed (bud cap 10-12 x 8-10mm, being broader than the rest of the bud). Flowering occuring a year after the buds have formed. Flowers being borne in axillary heads, on a much flattened and thick stalk, supporting 3 -7 flowers which are stalkless. The calyx tube is bell-shaped, the operculum is hemispherical to ovoid-hemispherical bing much broader than the calyx tube. The stamens have yellow-white filaments. Fruits are creamy-white, sessile (stalkless), broad, smooth (or with one faint rib 2cm long), bell-shaped to cylindrical, 12-20 x 12-20mm. Many tuarts in the Perth area are scarred by fire (making their bark black) or heavy attack by insects (see ailments), both of which can make them die back extensively. 
Tuart has no known close relatives, notable is its box type bark and somewhat biolobed coltyledons. Pith glands are absent. Possibly confused with E. decipiens \'redheart\', being easily distinguished by referring to the buds, which are pointed, conical and sessile; depressed globular fruit, grey-orbicular or heart-shaped coppice leaves. 
Usually occurring within 10km of the coast or near estuaries.', physical:'- Pendulous, shiny, greyish-, green foliage.
- Showing white perfumed flowers. Flowers during December - May [summer, autumn].
- Medium, 1-2cm wide, white fruit. Fruits are bell-shaped to cylindrical.
- Small, black, flattish to saucer-shaped seeds.
- Persistent finely fibrous, close, dense, grey to grey-white bark which extends to the branchlets, note however that smaller branches often stained brown. Tuart sheds more bark than most rough-bark eucalypts, leaving paler patches. In many cases (on the east side of the belt) they shed so much that the new pale bark predominates on the trunk (tuart\'s bark typical of Adnataria classifies it as a \'box tree\'). Note that scarring by fire makes the bark black. The timber is pale yellow.', horticulture: '- Tolerant of Phytophthora cinnamomi.
- Low maintenance required. very lime tolerant, usually frost tolerant needing protection when young
- Minimal: can be coppiced i.e. trunk cut at ground or near ground level to produce multiple stems for aesthetics, wind break purposes, for firewood or to renew vigour.
- Seed: seed can be collected all year round, with best establishment from seedlings
- Fungal attack: A bracket or pore fungus may be found on the trunk of tuart. The fungi growing up to 1m wide and weighing over 10kg.
- Insect attack: The larvae grubs of the tuart longicorn feed in the smaller outer branches causing brown stains where the sap flows from damaged bark. Grubs ringbark branchlets, causing the tree to re-shoot from lower down. The tuart bud-weevil destroys many of the buds. The female makes a hole in the cap of an unopended bud and lays her eggs. The larvea grow inside and eventually eats its way to the base, where it pupates and an adult weevil emerges.
- Readily available. commonly cultivated around Perth and South Australia, not common on the east-coast. It is cultivated overseas and valued highly in the Mediterranean where it tolerates salt winds and alkaline soils. Being found in Cyprus, Algeria, Tunisia, Libya, New Zealand and Spain.', architectural_uses: '- Coastal plant (secondary)
- Freeway sites
- Shade tree
- Street tree
- Windbreak', culture: 'Tuart timber has an interlocked grain and was very popular due to its hard, dense and strong nature, being used to constuct railway wagons, stern posts, bridge supports and shafts. It is moderately termite resistant and even stronger than that of Wandoo (E. wandoo). However it doesn\'t occur in large enough areas to be viable for commercial production. The Ludlow Forest from which timber was collected in the past is now a National Park. 
Hollows (often used by animals) in the trunk and branches contain water. The bark of the roots can be eaten after scorching or pounding. This bark may be mixed with gum from Acacia species. Grubs found in the roots are also eaten. The nectar produced during flowering can be used to sweeten water which can be held in bark dishes. 
Tuart is popular for honey makers, although it\'s pollen is of poor quality, it creates a pleasing flavour, is light in colour and candies well. Production is often limited due to the destruction of many buds by the Tuart bud-weevil. Tuart leaves yeild 0.03% oil. 
The suburb \'White Gum Valley\' was probably named after the Tuart.', conservation: 'Tuart does not commonly mix with other eucalypt species except in northern parts of its range, occurring with jarrah and marri. To the south it is associated with Western Australian Peppermint trees Agonis flexuosa. Tuart forests are generally sparse in low growing shrubs and hence take on \'park-like\' appearances. 
Unlike many eucalypts, Tuart does not develop a lignotuber, relying instead on its bark to protect it from fire. Saplings sometimes shoot from a swelling at the base of the stem after fire, but often are killed. In the limestone caves of the south-west, tuart roots are often seen hanging through the roof or protruding from stalactites or stalagmites. Often clumping in areas where water accumulates.', wildlife: 'Attracts:
- Birds
- Insecteaters 
- Baudin\'s black cockatoo (chews into the branchlets locating grubs living within by listening to their tunnelling)
- Nesting/Perching 
- Tree-martins
- Red-capped 
- Ringneck parrots
- Kestrels 
- Sacred kingfishers
- Seed-eaters 
- Insects (insects use virtually every part of the tree, the bark being important to protect and shelter them
mammals 
brushtail possums and falsistrelle bats live in dead hollow trunks)
- Reptiles (lizards take refuge in the bark)', architectural_info: 'Too large for average gardens, better planting as a park tree (excellent communities in Bold Park Reserve). Tuart is the largest tree of Perth\'s coastal plain, in both girth and height (2m and 30m respectively). Used as a shade tree in coastal districts such as Esperance (Western Australia) and the Eyre Peninsula (South Australia). Due to its rapid growth and timber which burns well, E. gomphocephala makes a good firewood tree.', characteristics: '- Erect, spreading, open, tree > 12m
- Dense canopy
- Vigorous growth rate.
', environment: '- Full sun
- One drop
- Frost Tolerant
', scientific_name: 'Eucalyptus gomphocephala')
CurrentPlant.create(name: 'Virginia creeper', common_name: 'Virginia creeper, American Ivy', family: 'VITACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Perennial climber 6 - 12m, with a vigorous growth rate.', environment: '', scientific_name: 'Parthenocissus quiniquefolia (incomplete)')
CurrentPlant.create(name: 'Wandoo', common_name: 'Wandoo, White gum', family: 'MYRTACEAE', description: '', synonym: 'E. redunca var elata', subspecies: 'wandoo', location_name: '', general_info: 'Generally associated with the wheatbelt and the drier eastern sied of the Jarrah forest, though it does grow on the Darling Scarp and even on the coastal plain (on alluvial Guildford and Swan soils and on some Bassendean). Preferring sandy-loam or gravelly soil with a heavier clay subsoil, but daptable to most soils. Found on hilly or gently undulating country.', additional_info: 'Wandoo is the aboriginal name for this tree (also called wando). 
Collected by A. Oldfield in 1840 near the Kalgan River. 
It original distribution being widespread and extending north to Three Springs, south to the Kalgan River and inland to a line through Kellerberrin and Corrigin. East of this line is the so-called \'eastern wandoo\'. It is common on the Darling Scarp and on the coastal plain.', identification: 'Juvenile leaves are blue-green to green, adult leaves are dull grey-green to blue-green and are broadly lanceolate, narrow, tapering to the tip, sometimes sickle-shaped, 8-12cm long, 1.5 -2.5cm wide, on a stalk 1-2cm long. The lateral veins are usually inconspicuous and make an angle of 35-50 degrees with the midrib. The intramarginal vein is 1-3mm from the leaf edge. Leaves are borne singly at different heights on the axis. The buds are spindle-shaped with the bud cap conical to horn-shaped (narrow and pointed). Bud caps are conical and are as long or longer than the rest of the bud, 0.6 - 1cm long 3-5mm wide. Flowers are composed of up to 15 of these buds on stalks 2-5mm long. The fruits are in clusters and are cylindrical to pear-shaped, 6-10 x 5-8mm. Valves sometimes protruding from the \'gum-nut\'. Seeds are whitish-grey to pale grey-brown, round to subspherical and smooth. 
Not to be confused with \'eastern wandoo\' which has orange new bark, yellowish-green foliage and hairy smaller leaved seedlings, or \'powder bark wandoo\' (E. accedens). Powder bark wandoo having similar habit of growth and white park, being distinguished by its powdery bark and its other botanical features (fruit etc). Their distribution is also different with Wandoo being found in clay and Powder bark Wandoo associated with laterite on high ground. Wandoo can be found in the metropolitan region in Walyunga National Park, Kalamunda National Park, on the western side of John Forest National Park, Upper Swan and between Armadale and Cardup. 
Wandoo does not have the mass of marri and jarrah, with wandoos trunk reaching a maximum of 1m width, though it can reach 30m high. Distinguished from E. accedens (powderbark) by its powderless bark and pointed bud caps.', physical:'- Dull blue to grey-, green foliage.
- Showing small, white flowers. Flowers during November - May [summer, autumn].
- Small, 0.6 - 1cm wide fruit. Fruits are cylindrical or pear shaped.
- Small, brown, round seeds.
- Young plants have very rough bark. Mature trees having smoother bark which varies from ash-grey to creamy-yellow (sometimes pale salmon pink when new in autumn) often with patches and mottles of the old rough bark remaining. The youngest branchlets are powdery grey. The trunk does not reach much more than 1m in width. Timber is yellow to light brown., noted for its attrative trunk.', horticulture: '- Tolerant of Phytophthora cinnamomi.
- low maintenance required. moderately lime tolerant, usually frost tolerant
- seed - seed can be collected all year round
- insect attack - a termite attacks the tree, hollowing out the limbs which then fall to the ground. They remain reasonably intact on the ground as dead wood is termite resistant. These hollowed out logs provide important homes for many animals (refer to wildlife). Wandoo is also attacked by boring larvae of beetles, often causing resprouting from dormant shoots along branches.
- not readily available. cultivated in King\'s Park in Perth and has been grown at the Waite Institute Arboretum in Adelaide. It has been trialed in Cyprus, Kenya, Ghana, India and South Africa but wasn\'t very successful. The inland form is frost resistant and drought tolerant and care in sourcing this seed may need to be taken.', architectural_uses: 'drought resistant
reduces erosion - soil binder
shade tree
street tree
windbreak', culture: 'Famous as a source of nectar for honey, producing a mild flavour with excellent quality. As is prefers good heavy fertile soils it is often used to indicate good farming country and in many districts wandoo country was the firtst to be cleared. Honey supply thus being not as great as it previously was. 
Wandoo timber is light brown or yellowish-brown, close-textured with interlocked grain, hard and strong and is valued as one of the world\'s most durable timbers. Metal bolts and the wood create no chemical reaction, giving bolts longer lives for construction purposes. However due to the large amount of clearing of wandoo it is no longer a timber commonly used. The bark contains up to 12% tannin. 
The Aboriginies soaked the flowers in water to collect the nectar. They also collected water from tree-hollows (holes being carved into the tree and then closed again) which were located by discolouration of the bark. This technique being more common in the wheatbelt areas. The roots from this tree are not edible and sweet (known as Conna), this is in reference to another tree, Platysace cirrosa.kkk', conservation: 'Often growing in association with Xanthorrhoea preisii (grass tree). In the forest environment wandoo grows in a similar way to jarrah. Remaining as a low shrub for many years while its lignotuber develops. Later sending up a vigorous shoot to form a sapling, which grows to form a \'pole\' (minimal branching). At this stage of its development it has rough, flaky bark. The tree then develops in a less determined manner than most other eucalypts, with its crown becoming well developed, branches wiggling and turning. Such branching patterns may well result from the shedding of branches and weighing down of the foliage during prolific flowering events.', wildlife: 'Attracts:
- birds, honey-eaters 
- birds, insect-eaters 
- birds, nesting / perching - use the tree hollows
- insects - supports an abundance of spiders, native cockroaches, thrips, beetles and flies
- mammals - The numbat, tree hollows are used by Gould\'s wattled bat, the white-striped mastiff-bat, the little mastiff-bat, wambenger, while the echidna, mardo and chuditch use the hollow logs. The brush-tailed possum uses both hollows in the tree and on the ground.
- reptiles - snakes and lizards use the hollow logs', architectural_info: 'Stands out with its white mottled bark. Can be planted as a street tree when there are no overhead wires. Firewood tree.', characteristics: 'erect, spreading, tree > 12m.', environment: '- one drop
- Prefers clay soils. 
- Frost Tolerant', scientific_name: 'Eucalyptus wandoo')
CurrentPlant.create(name: 'Wax plant', common_name: 'Wax plant', family: 'MYRTACEAE', description: 'Small tufting shrub which has a profuse display of small pale to deep pink flowers in spring. Highly attractive as long lasting cut flowers.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: 'These plants are commonly known as \'waxes\', due to the wax-like texture of their flowers.', identification: 'Needle-like or heath-like, linear leaves are 1cm long, bearing translucent oil glands (which, when crushed emit a strong citron-like perfume). Flowers are 5-petalled, rotate, pale pink (or white) aging to deep pink, borne in spring (note the flowers do not open up as much as other species). Fruit is a small woody capsule, which ripens in summer to release seeds.', physical:'- Small, heath-like, green foliage.
- Showing a profuse display of small, pink, waxy flowers. Flowers during September - November [spring].
used for cut flowers or floral art
- Small fruit are displayed during December - February [summer]. Fruits are woody capsule.
- Small seeds are seen during December - February [summer].', horticulture: '- water over dry periods, likes a north facing sheltered position. If used as a bedding plant it is advisable to build up a garden bed by 20-30cm to allow for extra free drainage.
- low maintenance required. moderately frost tolerant. Containerised specimens should be watered moderately, less when not in full growth.
- prune after flowering - Pruning is required during establishment to thicken the bush, tip-pruning is best here. Mature plants require annual pruning in December or post flowering. Pruning should be just into the current years flowered shoots (old wood should not be pruned).
- cutting - Propagation is from mature hardened-off tip cuttings (with pale brown bark)(3-5cm long) taken from the crown in late summer. Strike singly into tubes with 3:1 sand/peat mixture. Keep cuttings in warm, humid environment till rooting. Note the roots are very brittle and may be easily damaged when transplanting. Grow is generally rapid. 
- don\'t over water
- fungal attack - susceptible when drainage is poor
- insect attack - scale attack (treat with white oil)
- Phytophthora cinnamomi (dieback)
- readily available.', architectural_uses: 'bedding plant
coastal plant - secondary
potted specimen
rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tufted, woody shrub < 1m.', environment: 'full sun
one drop - may require summer watering.
Prefers sand, well drained soils, with a neutral to alkaline pH.
Frost Tolerant', scientific_name: 'Chamelaucium ciliatum')
CurrentPlant.create(name: 'Wedding Bush', common_name: 'Wedding Bush, \'Bridal Star\'', family: 'EUPHORBIACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Occurs on sandy gravel soils on granite outcrops in costal areas', additional_info: 'Wedding Bush - profuse white flowers in spring', identification: 'Medium-large woody shrub to 3 x 3 m. Male flowers have 5 petals with massed stamens.', physical:'- Attractive, lanceolate, dark green foliage.
- Showing a profuse display of medium, 1.5 cmcm wide, white, star like flowers. Flowers during September, October.
perfumed', horticulture: '- low maintenance required. Can be pruned to a large hedge, arbour
- readily available.', architectural_uses: 'coastal plant - secondary
fence screener
hedge
ornamental plant
windbreak', culture: '', conservation: '', wildlife: '', architectural_info: 'Useful for large hedges, windbreaks espeially in coastal areas.', characteristics: 'Large woody shrub, 3m, woody shrub >2m. With a dense canopy and vigorous growth rate.', environment: 'full sun
Prefers all types soils, with a neutral to acidic pH. 
Wind Tolerant', scientific_name: 'Ricinocarpus tuberculatus x cyanescens')
CurrentPlant.create(name: 'Weeping bottlebrush', common_name: 'Weeping bottlebrush', family: 'MYRTACEAE', description: 'loved for its attractive weeping form and long flowering red bottlebrush spikes. Quick growing. This native blends well with exotics.', synonym: '', subspecies: '', location_name: 'Machinery Shed carpark', general_info: 'living on alluvial land near permanent water, suitable for poorly drained areas (tolerates temporary inundation), grows in most soils and most environmental conditions - from very wet to very dry.', additional_info: 'The generic name viminalis, is derived from the Latin word vimen meaning \'a flexible twig\' and refers to the weeping nature of the branches.
Being naturally distributed in central New South Wales and southern Queensland, lying between the coast and the tablelands.', identification: 'When grown in the open, will reach 6-8m high, though grows tall in its natural environment.
Leaves are linear-lanceolate to 6-9cm long and 1cm wide, dark green, stiff and coriaceous, glabrous, with an acute-acuminate apex, margin entire but thickened, prominent midrib, glandular dotted, aromatic when crushed, petiole is reddish 3-4mm long. When foliage is young it is purple-pink and silky-pubescent (hairy). Inflorescence is a large red bottlebrush 6-8cm long x 5-6cm wide borne at the end of the youngest shoots. Spike is somewhat thinly filled with roughly 30 flowers, stamens are 50-60 to 2cm long, filaments are bright red athers are dark ruby red, style has a bright green stigma. Flowering prolifically in September to November, then sparsely throughout summer, and then again in early winter (especially if rains are good).', physical:'- Attractive, linear-lanceolate, dark green foliage.
- Showing a profuse display of large, 6 - 8cm wide, red, bottlebrush spike flowers. Flowers during September - May [spring, summer, autumn].
used for cut flowers or floral art
- rough scaly bark', horticulture: '- Water absorber - will drain wet areas, be careful this is not to the detriment of other plants.
- low maintenance required. borderline plant for frost tolerance - moderately frost tolerant (protect when young). Requires minimum care and attention. Very lime tolerant. Tolerant of Phytophthora cinnamomi.
- prune after flowering - Tree forms require little pruning except for in their early developmental stages, when pruning is required to establish a main trunk (removal of wayward laterals). Not only does pruning help alter the shape and growth form it also stimulates flower production (encouraging extra flowering - within the season and twice-yearly flowering). To get the best floral displays prune the flowering head before it turns to seed (during the final days of flowering or immediately after flowering). 
- cutting - short, leafy, semi-ripe tip cuttings taken in late summer and autumn. Note that cultivars must be propagated from cuttings to ensure the correct clonal features are maintained. Cuttings should be placed into a sand/peat mixture and kept in a cool, humid environment (with mist if possible). If difficulties arise in striking, a rooting hormone should be used.
- seed - seed in autumn or spring. Seed should be collected from the woody capsules near the base of the shrub, or closest to the trunk, to ensure seed is mature and viable. Capsules should be put into a paper bag and kept in a warm dry environment until the seed has been released. Seed should be sown in a friable medium and covered with fine peat and kept in a warm moist environment. Germination rates are generally high and therefore seeds should be sown thinly to avoid overcrowding. 
- insect attack - scale insects may cause damage and need to be controlled with white oil
- slugs and snails - Tent caterpillar or web worm may be a problem in summer 
- readily available. well established overseas, this genus is highly popular with many cultivars available, including;
\'Captain Cook\' - dwarf, tree-like habit to 1.5m
\'Dawson River\' or \'Dawson River Weeper\' - slender weeping tree to 10m
\'Glasshouse Country\' - slender erect tree to 5m, pink flowers
\'Hannah Ray\'- small tree to 5m, grey-green soft foliage and scarlet flowers
\'Little John\' - dwarf form
\'King\'s Park Special\'- small tree 5m
\'Hen Camp Creek\'- 3-4m tall shrub
\'Prolific\'- small tree 4-6m, fast growing bearing large red bottlebrush flowers
\'Rose Opal\'- dwarf 1.5-1.8m, bottlebrush flowers with rose-red stamens
\'Wild River\'- 4m tall, semi-weeping form', architectural_uses: 'coastal plant - secondary
drain clogger
fence screener
freeway sites
hedge
ornamental plant
potted specimen
street tree
waterside position
wetland plant
windbreak', culture: 'flowers are sucked for their nectar', conservation: '', wildlife: 'Attracts:
- birds, honey-eaters', architectural_info: 'taller forms make good street trees, grow into large tubs (especially the dwarf forms). Bonsai specimen. This native blends well with exotics. Helps to reduce gully erosion.', characteristics: 'erect, weeping branched, tree 6 - 12m. With a dense canopy and vigorous growth rate.
', environment: '- full sun
- partial shade
- one drop 
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Callistemon viminalis')
CurrentPlant.create(name: 'Weeping paperbark', common_name: 'Weeping paperbark, White paperbark, Cajeput, Northern paperbark', family: 'MYRTACEAE', description: 'vigourous growth rate, may cause problems in small urban gardens', synonym: '', subspecies: '', location_name: '', general_info: 'Found growing at the edge of the sea, along watercourses, river banks, near coastal and freshwater swamps. Sometimes found in deep sandy soil on beaches. Generally regarded as a hardy tree for warm climates in moist or boggy situations (tolerating temporary inudation and permanently boddy soil).', additional_info: 'Distributed across the north of Australia including Queensland, the Northern Territory and Western Australia, extending to Indonesia and Papua New Guinea. 
Given the Aboriginal name \'Thalgo\' by the locals of Roebourne.', identification: 'Leaves are lanceolate tapered toward the tip, up to 20cm long by 1-3cm broad, with 5 distinct longitudinal veins. Flowers arranged in loose cream or white cylindrical spikes 4-8cm long. Flowers are carried stiffly at an angle to the drooping stem in groups of 3, at 5-10mm intervals. Fruits are cup-shaped 4-5mm diameter held in loose clusters along branches.', physical:'- Large, thin, aromatic, green foliage.
- Showing large, 4-8cm wide, white, floral spike flowers. Flowers during June - November [spring, winter].
perfumed
- Small, 0.4 - 0.5cm wide fruit. Fruits are cup-shaped, woody capsule.
- thick white papery bark (thinly deciduous), slippery to the touch.', horticulture: '- low maintenance required. Sensitive to frosts (requiring protection), especially when young, liking warm climates. Tolerant to Phytophthora cinnamomi 
- seed - seed has been collected from August - September, with establishment best from seedlings. Good success rates for establishment.
- readily available.', architectural_uses: 'coastal plant - secondary
ornamental plant
reduces erosion - soil binder
street tree', culture: 'The trunks may have been used for canoes. 
The bark is used to; waterproof shelters, wrap or hold items. The inner bark being bashed and soaked in warm water to be used as a wash or beverage for coughs. Also being applied to head neck and ears to treat headaches. Flowers are rich in nectar and can be sucked. The aromatic leaves are crushed then soaked, the resulting liquid being used as a decongestant and inhalant to cure colds and coughs.', conservation: '', wildlife: 'Attracts:
- birds, honey-eaters - when the tree is in flower
- birds, insect-eaters 
- insects - nectar attracting bees', architectural_info: 'Attractive weeping look to the tree. Very useful for rural properties in positions of poor drainage (surrounding dams or along creek lines). Vigourous / rampant growth rate, may cause problems in small urban gardens. Good firewood tree.', characteristics: 'erect, tree > 12m. With a vigorous growth rate.', environment: '- full sun
- partial shade
- two drop', scientific_name: 'Melaleuca leucadendra')
CurrentPlant.create(name: 'White Cascade', common_name: 'White Cascade', family: 'MYRTACEAE', description: 'Weeping form, profuse flower display', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Woody shrub, flowers white with 5 petals, leaves 2 x 5 mm', physical:'- Attractive, small lanceolate, dark green foliage.
- Showing a profuse display of medium, 1 cmcm wide, white flowers. Flowers during October - January.
- light brown bark', horticulture: '- Weeping habit, profuse flowering display
- readily available. Most native plant nurseries', architectural_uses: 'coastal plant - secondary
cottage plant
ornamental plant
trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'Weeping form, profuse flower display', characteristics: 'Weeping shrub, 2m, woody shrub 1 - 2 m. With a vigorous growth rate.', environment: '- full sun  
- two drop
- Prefers loam, well drained soils, with a neutral to alkaline pH.
', scientific_name: 'Baeckea virgata (inc)')
CurrentPlant.create(name: 'White Cedar', common_name: 'White Cedar', family: 'MELIACEAE', description: 'Flowers and fruit profuse display.', synonym: '', subspecies: '', location_name: '', general_info: 'Tolerates dry soil and mild coastal areas. Fruit attracts parrots and cockatoos', additional_info: '', identification: 'Attractive, large, compound, glossy, toothed margins, dark green foliage.
', physical:'', horticulture: '- Fruit will fall en masse onto ground but they break down quickly.
- low maintenance required.
- readily available.', architectural_uses: '', culture: '', conservation: 'Attracts parots and cockatoos.', wildlife: '', architectural_info: 'Spreading tree with attractive foliage, flowers and fruit.', characteristics: 'Spreading tree, 8m, tree 6 - 12m. With a dense canopy.
', environment: '- one drop
- Prefers all types, well drained soils, with a neutral to acidic pH.
- Frost Tolerant 
- Wind Tolerant', scientific_name: 'Melia azedarach var. australasica (incomplete)')
CurrentPlant.create(name: 'White Kurrajong', common_name: 'White Kurrajong', family: 'STERCULIACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Requires watering during establishment. Prefers warm, dryish climates.', additional_info: 'South west corner of James Oval, also Botany Taxonomic Garden. Norther NSW, southern QLD', identification: 'Summer deciduous. Sturdy, bottle-shaped trunk - lowwer part grey bark, upper trunk smoth and greenish. Pale pink bell shaped flowers in thick cluster on bare branches. Irregular flowering habit.', physical:'- 5-lobed, variable, silvery on underside, green foliage.
- Showing a minimal display of large, 5-6 cm acrosscm wide, pink, Furry bell shaped, 5-lobed flowers. Flowers during December - February [summer].
- Large, 10 cmcm wide, brown fruit are displayed during March - May [autumn]. Fruits are Large fat pods. Fruiting bodies are minimal in their abundance.
- Trunk - lower part grey bark neatly tessilated bark, upper trunk smoth and greenish., noted for its attrative trunk.', horticulture: '', architectural_uses: '', culture: 'Natural fodder tree in times of drought. Timber is soft and spongy and has no value.', conservation: '', wildlife: '', architectural_info: 'Grown for botanical interest. Prefers companion trees. Probably not suitable as a specimen tree.', characteristics: 'Summer deciduous tree, 6 m, tree 6 - 12m. With a open canopy.', environment: '- full sun
- partial shade
- one drop', scientific_name: 'Brachychiton discolour')
CurrentPlant.create(name: 'White stemmed wattle', common_name: 'White stemmed wattle', family: 'MIMOSACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Predominantly a coastal species, restricted to limestone areas (spearwood soil).', additional_info: 'xanthos being Greek for \'yellow\' and refers to the flowers.
Collected near Perth by James Drummond in 1839.

Distributed along the coast to the north of Perth, extending from Fremantle to Geraldton, also being found near Shark Bay (generally in scattered and isolated populations).', identification: 'Phyllodes are bluish-green or sometimes yellowish, 6-11cm long x 1-2cm wide, with 2 pale longitudinal viens and pale margins. Flower heads are usually in groups of 6 to 9, up to 15.

Can be distinguished from A. saligna (Red-eyed wattle) or A. rostellifera (Summer scented wattle) by its brighter coloured appearance, from its bluish-green foliage and white branchlets.

In the Perth metropolitan region it is found on sloping land bordering the lower Swan River (ie below the Esplanade in Peppermint Grove, on Cantonment Hill in Fremantle). A good population being found at Bold Park on the norther and north-eastern sides of Reabold Hill, this extends along the limestone ridge north of Oceanic Drivee', physical:'- Bluish or yellowish, green foliage.
- Showing yellow, rounded flower heads flowers. Flowers during August - November [spring].
- branchlets are white or greenish white', horticulture: '', architectural_uses: '', culture: '', conservation: 'This species is susceptible to fire (doesn\'t produces suckers, regenerating from seed, and is likely to be out-competed by other species during early succession). Where the frequency of fires has been low this species has been able to flourish.', wildlife: 'Attracts:
birds, insect-eaters 
birds, nesting / perching 
the \'thicket\' habit of this plant being used by many birds for shelter and nesting
insects 
an array of insects and sticky ants (Crematogastersp.) harvest secretions from basal glands at the base of phyllodes. In addition it is thought that ants disperse the seed. The \'drab\' appearance of the seed stalks being unlikely to attract birds. Jewel beetles ( Agrilus australasiae, Cisseis sp. and Melobasis terminata) and two species of small grey long-horned beetle are also found on A. xanthina. Flowering attracting native bees, and in summer parasitic wasps can be seen preying upon moth larvae found growing on the foliage.', architectural_info: '', characteristics: 'bushy, spreading, woody shrub >2m. With a dense canopy.', environment: '', scientific_name: 'Acacia xanthina')
CurrentPlant.create(name: 'Wild Iris', common_name: 'Wild Iris', family: 'IRIDACEAE', description: 'Grown for their attractive foliage and iris-shaped flowers. Flowers are generally short lived but blooms are regular and successive over spring and early summer.', synonym: '', subspecies: '', location_name: 'Agriculture Gardens', general_info: 'prefers humus rich soil which doesn\'t completely dry out', additional_info: 'Native to southern Africa', identification: 'This clumping plant has long, narrow, tough, erect basal leaves. Branching stems bearing a succession of short-lived (several days) iris-like flowers during summer. Iris-like flowers are large (10cm diameter), predominantly white with attractive mauve and orange-yellow markings on the petals. Cylindrical fruit is seen on floral stems for some time post flowering.
Larger flowers and larger spread than D. bicolor. Easily distinguished by flower colour.', physical:'- Attractive, sword-like, green foliage.
- Showing a moderate display of large, 10cm wide, white, iris-like flowers. Flowers during September - February [spring, summer].
- Medium, 5cm wide, brown fruit. Fruits are capsule. Fruiting bodies are profuse in their abundance.
- Small, 0.5cm wide, brown, round-elliptic seeds.', horticulture: '- low maintenance required. half hardy, tolerating temperatures to 0 degrees C. 
- minimal - do not remove flower stems as they continue to flower for several years 
- division - large specimens can be propagated by division in spring (note that re-establishment may be difficult)
- seed - propagate by seed in autumn or spring, note this species readily self-seeds.
- readily available. cultivated widely', architectural_uses: '- hedge
- rockery plant
- waterside position', culture: '', conservation: '', wildlife: '', architectural_info: 'Can be a useful small hedge if planted at high densities. Often planted with D. bicolor to create a contrast of flower colours (pale yellow iris-like flowers).', characteristics: 'erect, rhizomatous, clump-forming, Perennial herbaceous shrub < 1m.', environment: '- full sun  
- one drop
- Prefers well drained soils.', scientific_name: 'Dietes grandiflora')
CurrentPlant.create(name: 'Wollemi Pine', common_name: 'Wollemi Pine', family: 'Araucariaceae', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Wollemia nobilis')
CurrentPlant.create(name: 'Woolly orange banksia', common_name: 'Woolly orange banksia', family: 'PROTEACEAE', description: 'A very attractive species. Terminal, cylindrical and conspicuous flowering cones. Unopened flowers pale pink and hairy. Orange fowers opening from the base up.
', synonym: '', subspecies: '', location_name: '', general_info: 'Restricted to small area between Nth Hampton and lower Murchison. Rainfall 350 mm.', additional_info: 'Named after Queen Victoria. Restricted to small area between Nth Hampton and Lower Murchison, WA. Rainfall 350 mm.', identification: 'Shrub to 7 m. Smooth grey bark. Branches densely hairy. Long (20-30 cm) leaves deeply triangular-lobed with short dense hairs, older leaves not hairy.', physical:'- Attractive, irritating, long 20-30 cm, deeply triangular-lobed, dark green foliage.
- Showing a moderate display of large, 7-12 cm long, 7-8 cm widecm wide, orange, Orange with pale pink hairs flowers. Flowers during January, February.
used for cut flowers or floral art
-2.2-2.8 long x .10-.15 x .13-15 widecm wide, gray fruit. Fruits are folicle. Fruiting bodies are minimal in their abundance.
- Large, 2.3- 2.9 cm longcm wide, brown, winged seeds. Seed is inconspicuous in its abundance.
- Smooth, grey', horticulture: '- low maintenance required. Light pruning, but not below the green foliage. 
- minimal - Light pruning, not below the green foliage.
- readily available. Fast growing. Flowers 3-4 years from seed. Frost sensitive.', architectural_uses: 'freeway sites
ornamental plant', culture: '', conservation: 'Bird pollinated. Summer flowering. Killed by fire. Regenerates from seed.
', wildlife: '', architectural_info: 'A very attractive species.', characteristics: 'Densely branched shrub, 2-3 m, woody shrub >2m. With a dense canopy and vigorous growth rate.
', environment: '- full sun  
- one drop - may require summer watering.
- Prefers sand, well drained soils', scientific_name: 'Banksia victoriae')
CurrentPlant.create(name: 'Woollybush', common_name: 'Woollybush, Albany woollybush', family: 'PROTEACEAE', description: 'Silky grey-green foliage is very attractive, producing a beautiful contrast. Fast growing, great hedge or screening plant.', synonym: 'A. sericea', subspecies: '', location_name: 'Sunken Garden, Agriculture / Crime Research', general_info: '', additional_info: '', identification: 'One of the tallest species of the genus. Silky, soft to touch, grey-green foliage. Leaves are highly divided, hairy, to 4.5cm long. Flowers are inconspicuous and hidden by the dense woolly foliage, produced throughout the year.', physical:'- Attractive, silky grey-green, silver foliage.
- Showing a inconspicuous display of medium, 3cm wide, red, tubular flowers. Flowers all year round.', horticulture: '- minimal - pruning level depends on use of the plant, for hedges shaping is desirable
- cutting - propagate from cuttings taken in summer (mist should be applied sparingly) 
- Phytophthora cinnamomi (dieback)
- readily available. unreliable on the east coast in humid environments.', architectural_uses: 'coastal plant - primary
fence screener
hedge
ornamental plant
potted specimen
windbreak', culture: '', conservation: '', wildlife: '', architectural_info: 'its silver foliage produces a beautiful contrast within the garden', characteristics: 'rounded, bushy, woody shrub >2m. With a dense canopy and vigorous growth rate.', environment: '- full sun
- one drop
- Prefers sand, well drained soils.
- Frost Tolerant', scientific_name: 'Adenanthos sericeus')
CurrentPlant.create(name: 'Yellow buttons', common_name: 'Yellow buttons', family: 'ASTERACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'- Attractive, silver foliage.
- Showing a profuse display of small, 8mmcm wide, gold flowers. Flowers during September - February [spring, summer].', horticulture: '', architectural_uses: '- basket plant
- bedding plant
- cottage plant
- drought resistant
- groundcover
- groundcover suitable with some trees or shrubs
- groundcovers for small areas between shrubs or driveway strips
- ornamental plant
- plants for paving and wall crevices
- rockery plant
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'groundcover, 1.5m, Perennial herbaceous shrub < 1m. With a dense canopy.', environment: '- full sun   
- one drop
- Prefers sand, well drained soils.', scientific_name: 'Helichrysum ramosissimum (incomplete)')
CurrentPlant.create(name: 'Yellow gum', common_name: 'Yellow gum, Blue gum, White-wood, White ironbark', family: 'MYRTACEAE', description: 'Long flowering, good specimen tree for suburban gardens', synonym: '', subspecies: 'leucoxylon', location_name: '', general_info: 'Yellow gum grows mainly on clay soils but it is also found on alluvial soils and appears to grow on a range of soils including limestone.', additional_info: 'Greek leuco meaning \'white\' and xylon meaning \'wood\', referring to the white-wood of this tree. 
Native to Wimmera and central western districts of Victoria and on the lower Flinders Ranges in South Australia.', identification: 'Young, juvenile leaves are grey-green in colour, opposite and sessile, ovate to broadly so 5-6cm long x 4-5cm wide. Mature foliage, leaves are dull mid to dark green, alternate, lanceolate-falcate 10-15cm long x 1.5-3cm wide, on slender petioles to 2.5cm long. Flowers are borne in groups of 3 (pendulous axillary umbels), the pedicels 1cm long, calyx tube 8-10mm long reddish-green, operculum conical to 7-8mm, with tapered curved beak, green; stamens numerous 8-10mm long, filaments white anthers deep cream (note that \'rosea\' has pink coloured flowers, whereas the species can have a range of coloured flowers including white and red). Is often confused with related species E. leucoxylon ssp. megalocarpa and E. leucoxylon ssp. petiolaris, which both have larger fruits and further extend the flower colour range to include yellow and orange. Fruit capsule campanulate to pyriform to 1cm long with distinct rim and shallow longitudinal ribs, the valves sunken below the rim. Seed brown, compressed-ovoid to disc-shaped with a shallow distinct reticulum. 
The persistent fibrous bark at the base of the bark classifies it as an Ironbark. 
Yellow gum occassionally hybridizes with Mugga E. sideroxylon spp. sideroxylon.', physical:'- Bluish tinged, green foliage.
- Showing a profuse display of pink flowers. Flowers during March - November [spring, autumn, winter].
used for cut flowers or floral art
- 0.7-1cm wide, brown fruit. Fruits are barrel-shaped.
- Small, brown, compressed-ovoid to disc-shaped seeds.
- The upper trunk has a smooth white (light grey over a creamy-white) surface with a persistent fibrous base (hard grey furrowed bark to 1m)(Ironbark). Some of the smooth bark may decorticate in patches of irregular shape to show the new cream, blue grey or white bark beneath. The trunk can be either slender and erect or gnarled and bent if the tree is grown on impoverished soil. The branches are large and or irregular placement, noted for its attrative trunk.', horticulture: '- Tolerant of Phytophthora cinnamomi.
- low maintenance required. requires minimum care or attention, surviving under a wide range of conditions. Very lime tolerant, usually frost tolerant.
- minimal - can be coppiced i.e. trunk cut at or near ground level to produce multiple stems, for aesthetic purposes, to improve its success as a windbreak tree, to renew vigour. 
- seed - seed can be collected year round
- readily available. \'rosea\' is a common form in cultivation. Often being confused with E. leucoxylon ssp. megalocarpa and E. leucoxylon ssp. petiolaris, whose flowers are usually large and often a striking deep pink, but cream, yellow and orange flowers also occur.', architectural_uses: 'coastal plant - secondary
drain clogger
drought resistant
freeway sites
ornamental plant
reduces erosion - soil binder
shade tree
street tree
tolerates harsh conditions
windbreak', culture: '', conservation: '', wildlife: 'Attracts:
- birds, insect-eaters 
- birds, seed-eaters 
- mammals - koala\'s feed on the foliage (eastern states)', architectural_info: 'Good specimen tree for suburban gardens, blends well with exotics. Good for honey production. One of the most popular introduced species to the Perth Region. Firewood tree.', characteristics: 'erect and slender or gnarled and bent, open crowned, spreading, tree > 12m. With a open canopy and vigorous growth rate.
', environment: '- full sun
- partial shade
- one drop
- Prefers all types soils
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Eucalyptus leucoxylon')
CurrentPlant.create(name: 'Yellow kangaroo paw', common_name: 'Yellow kangaroo paw, Tall kangaroo paw, Evergreen kangaroo paw', family: 'HAEMODORACEAE', description: 'long-lived, tall, yellow-green flowering kangaroo paw with reed-like foliage', synonym: '', subspecies: '', location_name: '', general_info: 'Growing in a wide range of soil (from clay-loams to peaty sands), tolerant of humidity (can be grown in tropical areas), extreme heat and dryness. Naturally found in a high rainfall zone (forests in the south, Western Australia) colonising wet road verges, river banks and swamps. It has been found living in shallow water (tolerates wet conditions), partially submerged during winter (tolerating brackish estuarine water). Is found growing in karri, jarrah and marri forests where it tolerates partial to heavy shading.', additional_info: 'Collected in 1803 at King George Sound by botanists Baudin, Guichenot and Riedle, associated with Thomas Nicholas Baudin\'s expedition. A. flavidus being named in 1807 by Augustus P. de Candolle (the Professor of Botany at Montpellier). 
The name \'kangaroo paw\' (initally called \'kangaroo foot\') came into common use in the 1950s, and is used to describe many species of Anigozanthos and Macropidia fuliginosa. The prefix \'Yellow\' describing the flower colour associated with this species, or \'Tall\' as it is one of the larger forms. \'Evergreen\' perhaps referring to the persistant foliage which is displayed throughout the year. 
The Aboriginal common names used to describe this plant range from, cattech, cathah or cassiteh and koroylbardang, though they are rarely used today. 
Naturally found from Augusta east to Two Peoples Bay and north to Waroona (Western Australia).', identification: 'In general flowers are yellow-green in colour, though they can be a more pronounced yellow, brownish-red (as seen in populations near Margret River), lime-green, orange or pink. The floral stem produces a widely branched cluster of inflorescences. Flowers have tubular perianths 3-4.5cm long, anthers are tipped with an orange appendage. Leaves are large and flat, 35-100cm long by 5-20cm wide (a distinguishing feature). 
Note that in the wild this species often produces twice the number of floral stems (10) in a flowering season than other related species (kangaroo and catspaws). In cultivation this number is often increased greatly (10 fold), given favourable conditions. Commonly the inflorescence is many flowered, 5 - 15 flowers per inflorescence (this species is known to be floriferous producing between 350 flowers per plant per season, note these numbers are often dramatically increased in cultivation, though rarely greater than 2,000 flowers in a season. Some of its hybrids being recorded as producing up to 7, 600 flowers). This species peaks in its flowering time in late spring or early summer. 
While most kangaroo paws have leaves and scapes (floral spikes) which die back post flowering, A. flavidus has leaves which persist throughout the year. These plants will persist in the same spot for several years (note many other kangaroo paws being thought of as biennial due to their poor yearly regeneration). Rhizomes growing larger than most species to 5cm wide. Leaf clusters of this species may exceed 2m in diameter and have been recorded as living up to 30 years or more.', physical:'- Attractive, reed-like, green foliage
- Showing large, yellow, furry, tubular, generally green- flowers. Flowers during November - February [summer].
used for cut flowers or floral art', horticulture: '- Often used as one of the \'parents\' of the colourful hybrids.
- Low maintenance required.
- Prune after flowering - cut floral spikes after initial flowering (low but not too low, leaving axillary buds) so that more floral spikes will re-shoot (extending the flowering time).
- seed - very easy to germinate from seed
- Fungal attack - susceptible to ink disease Dreschleria irisid , don’t over water
- Readily available. Very common and regarded as the hardiest species in cultivation. Popular cultivars (hybrids made by crossing A flavidus with another species)are listed below. Note that these can all be propagated by division, however on a large scale tissue culture is the preferred method. Cultivation is generally consistent in that most will thrive in an array of soil types so long as they have some drainage capacity, in full sun, requiring plenty of water in late winter and spring when the flower buds are growing. 
Tall cultivars (2m and over with floral spike) \'Bush Dawn\' also a cultivar of similar crossing (A. flavidus x A. pulcherrimus) is tall (2m and over - with inflorescence) which has long 120cm strap-like leaves with multiple branched flower stems (producing anywhere from 50 - 100 stems) with small bright yellow flowers in spring to early summer (spectacular display). This cultivar is a consistent performer and is suitable for temperate regions. \'In the Pink\' (also being a selected form) has a large form (2m and above with floral spike) leaves to 100cm, lightly branching stems which show off small hot pink flowers produced in masses in summer (up to 50 stems in a single flowering season). Flower stems have a reddish colouring to them. This cultivar is vigorous. \'Red Cross\' (A. flavidus x A. rufus) is a vigorous cultivar with a habit typical of A. flavidus. Floral spikes are multibranched and produce rich burgundy flowers (burgundy hairs covering the flower and the stem). Another cultivar \'Bush Sunset\' having the same cross (A. flavidus x A. rufus) this form is tall (2m and over with floral spikes) with long 100cm leaves which are much branched and produce masses of small bright red flowers in early summer. This cultivar is hardy and suitable for temperate regions. A beautiful cultivar which complements \'Bush Dawn\' contrasting in floral colour. Medium cultivars (1-2m with floral spike) \'Dwarf Delight\' (A. flavidus x A. onycis) is a popular apricot to red (burnt orange) flowering cultivar which grows as a small compact clump (1-2m tall with floral spike, spread to 50cm). Its multibranched flower stems to 1 m, flowering during the warmer months (spring and summer). Division of clumps may be difficult to re-establish, and appears to be susceptible to ink spot disease, therefore care is required when growing to get the best results. \'Regal Claw\' (A. flavidus x A. preissii) having olive green leaves with multiple orange flowers on spikes up to 1.5m tall (flowers and spikes being covered with dense red hairs), flowering in spring and summer. \'Pink Joey\' (a selected form of A. flavidus, discovered in the wild) has a compact clumping form (medium-sized 1-2m tall, reaching a spread of 50cm) with short strap-like leaves to 60cm, with small smoky pink flowers. Suitable to temperate and sub-tropical regions. Is a great potted specimen. \'Bush Gold\' is a medium sized cultivar (1-2m tall with floral spike, spread of 50cm) (a mutation of the hybrid \'Bush Glow\' a cross between A. flavidus x A. humilis) with shorter 60cm long strap-like leaves, with lightly branched flower stems bearing masses of bright yellow flowers in spring and summer, and sometimes sporadically throughout the year. This cultivar is suited to temperate and sub-tropical regions. 
Dwarf cultivars (1m and under, including floral spike) \'Harmony\' (A. flavidus x A. pulcherrimus) is a showy round clumped cultivar with bright green fleshy leaves and bright yellow flowers on red stems to 1m tall flowering during spring and summer). \'Bob and Blanche\'s Wedding\' (a mutation of the hybrid between A. flavidus x A. humilis) has short (50cm) strap-like leaves growing to 60-70cm tall (spread to 40cm). Its floral stems are much branched showing medium sized bright orange flowers (nearly iridescent in colour). Flowering is year round in frost free environments (best grown in temperate regions). Large clumps will mulitply by division, often somewhat reluctantly. Makes a great potted specimen. \'Bush Ranger\' (A. flavidus x A. humilis) is a short form (60-70cm tall with floral spike, spread to 50cm) with 50cm long strap-like leaves. Floral stems are much branched and bear masses of small bright red flowers year round when not exposed to frost (best in temperate regions). Requires well drained soil to thrive as it is prone to root-rotting fungus Pythium (may need treatment with fungicide \'Ridomil\'). A good rockery specimen. \'Yellow Rock\' (a mutation from the hybrid cross of A. flavidus x A. humilis) (reaching 60-70m tall spread of 40cm) with short 50cm long strappy-leaves and many branched flower stems bearing medium-sized yellow flowers (sometimes tinged orange) year round (if frost free, suitable for temperate regions). Makes a good potted specimen. \'Bush Twilight\' (a deliberate hybrid between A. \'Bush Ranger\' x A. humilis) is a short (to 80cm tall, spread of 30cm) form with leaves to 50cm and lightly branching floral stems showing large yellow flowers tinged with orange produced on mass year round in frost free environments (best in temperate regions). Best as a potted specimen it is yet to be a reliable garden plant. Propagation by division is usually difficult. \'Bush Heritage\' (a deliberate hybrid between A. \'Bush Ranger\' x A. \'Bounty\' ) has a short form (60-70m tall, spread 40cm) with 50cm long leaves with a lightly branched floral stem showing masses of deep burgandy flowers (extremely floriferous cultivar). Flowering year round in frost free environments (temperate regions). It makes a great potted specimen, but is yet to be a reliable garden plant. Propagation by division is generally difficult.', architectural_uses: '- ornamental plant
- potted specimen
- rockery plant
- waterside position', culture: 'Apparently Aborigines would eat the rhizomes of young plants (prior to flowering).', conservation: 'A fire opportunist, appearing in great numbers after fires. The rhizome (tough, underground stem) common to most kangaroo paws, is buried 2-10cm below the soil surface allowing the plant to survive bushfires (sprouter). Also commonly seen occupying other disturbed areas (ie road verges). A. flavidus being extremely competitive, and seen in abundance in the south-west region.

Note that with regards to the inflorescence, only one or two flowers, open and function at any given moment (an evolutionarily advantageous trait to increase likelihood of successful pollination). Flowers opening from the bottom upward, with new flowers opening at night. Fresh flowers are thrust forward opening (usually) towards the scape (floral stem) on which pollinators (usually birds) sit. These flowers last for roughly 6 days then shrivel and rotate sideways, allowing the next flowers to open and face the stem. Pollinators are attracted to the brightly coloured flowers, being rewarded by often large quantities of sugar rich nectar (containing 5-20% sugar). As the animal (usually a bird) feasts on the nectar, pushing into the tubular perianth, it is dabbed by pollen coating the anthers. These sausage-shaped pollen grains remain viable for only a day, but will hopefully come into contact with the stigma of another flower and seed will be produced.

This species is highly successful in attractive pollinators (highly successful reproduction) being found to have 97% of flowers pollinated and setting seed (such high rates are due partially to its ability to self-pollinate).

This genus protects itself from predation by herbivors through the production of calcium oxalate crystal (sharp-needle like crystals). Clusters of these crystals (called raphides) are toxic to most animals', wildlife: 'Attracts:
- birds, honey-eaters 
(the nectar produced during flowering attracts many honey-eating birds; including the New Holland, singing, brown, white-cheeked and tawny-crowned honey-eaters, silvereyes, weebills and red wattlebirds. While most of these species are successful pollinators, the silvereye and weebill (with their short bills) are known to cause flower damage in pursuit of nectar. Parrots such as the red-capped and Port-Lincoln parrot also destroy flowers, ripping them off the scape and crushing them to get at the nectar.)
- insects 
flowering attracts an array of insect feeders; thrips, ants, bees, hairy catterpillars, long-horned grasshoppers. The european honey bee (Apis mellifera) theives nectar from the flowers and appears not to play a role in pollination (due to the large physical separation of the nectar site and the anthers and stigma). Often capitalising on damaged flowers caused by the silvereye and weebill (birds). The long-horned grasshoppers (Katydids) not only enjoy the feast of the flowers but also use the inflorescence as a site for mating.
- mammals 
flowering attracts marsupials; the honey-possum and western pygmy possum (small animals) which scamper up the floral spikes to drink the sugar rich nectar. Kangaroos (western grey) are also known to graze on the flowers, and often cause damage to plants by knocking down the scapes.', architectural_info: 'spectacular spikes of paw flowers for long periods', characteristics: '- clump forming
- bushy
- Perennial herbaceous shrub 1 - 2 m.', environment: '- Full sun
- Partial shade 
- One drop
- Prefers well drained soils.
- Frost Tolerant', scientific_name: 'Anigozanthos flavidus')
CurrentPlant.create(name: 'Yesterday-today-and-tomorrow', common_name: 'Yesterday-today-and-tomorrow, Brazil raintree', family: 'SOLANACEAE', description: 'attractive purple-blue fading to white flowers
', synonym: 'Brunfelsia calycina', subspecies: '', location_name: 'Tropical Grove, Engineering Garden, Agriculture Garden', general_info: 'likes humus rich soil', additional_info: 'originating from South America', identification: 'Leaves are lance shaped, leathery, glossy. Note that the flowers are initially a rich purple colour which fade to pale blue then white with age. Flowers have a white eye with a tubular base, 5 petals are wavy edged and overlapping.', physical:'- Leathery, glossy, green foliage.
- Showing a profuse display of large, pink, attractive flowers. Flowers during June - November [spring, winter].
perfumed', horticulture: '- Containerised specimens need only moderate watering, less in cool regions.
- pinch out growing tips - pruning consists of the removal of stem tips to promote branching during the growing season.
- cutting - propagate from semi-ripe cuttings taken in summer
- insect attack - susceptible to mealy bug and whitefly
- readily available.', architectural_uses: 'potted specimen', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'rounded, spreading, woody shrub 1 - 2 m. With a dense canopy.
', environment: 'full sun
partial shade
Prefers well drained soils.', scientific_name: 'Brunfelsia pauciflora')
CurrentPlant.create(name: '', common_name: '', family: '', description: '1.2 x 1.5 shrub. Evergreen with stunning display of orange flowers on top of stems.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Will survive without irrigation', scientific_name: 'Verticordia nitens')
CurrentPlant.create(name: '', common_name: '', family: 'NYCTAGINACEAE', description: 'A creeper which covers large areas and produces masses of attractive, flamboyant flowers during summer.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'floral display is created by the floral bracts as the true flowers are small and insignificant. Flowering generally in summer, though can also be in spring. Leaves vary in size depending on environmental conditions.', physical:'- Rounded - oval, dark green foliage.
- Showing a profuse display of medium, pink, clusters of floral bracts flowers. Flowers during December - February [summer].

', horticulture: '- To get the best from this creeper support structures (i.e. a trelis) should be used, especially during vigourous growth periods.
- low maintenance required. frost tender, minimum 7-10 degrees C. This species does not require much watering or fertilising. It should be noted that over-fertilising and over-watering results in pronounced leaf growth often resulting in poor flower production (may also stimular thorn production). If a pot specimen, do not overwater, and keep dry during the dormant period.
- prune after flowering - Pruning should be post flowering (cut back to previous season\'s lateral growths leaving 2-3cm long spurs) and can be moderate or severe depending on need (can be dramatically cut back without causing damage).', architectural_uses: '- potted specimen
- trailing plant for walls', culture: '', conservation: '', wildlife: '', architectural_info: 'can be kept as a potted specimen, if pot is large and plant is pruned regularly.', characteristics: '- woody stemmed 
- shruby 
- scrambling
- perennial climber 1 - 6m with a vigorous growth rate.', environment: '- Full sun 
- One drop
- Prefers well drained soils.

', scientific_name: 'Bougainvillea glabra')
CurrentPlant.create(name: '', common_name: '', family: 'MYRTACEAE', description: 'attractive, perfumed foliage, floral sprays make good display. Native which will blend well with exotics.', synonym: '', subspecies: '', location_name: '', general_info: 'On the coastal plain it is found growing near watercourses, swamps or winter wet depressions. Likes most soil types, prefering moist conditions though tolerating dry periods. Will tolerate periods of temporary inundation.', additional_info: 'Naturally located in near coastal areas from Moore River to Bremer Bay, with an isolated population east of Esperance.', identification: 'Foliage and flowers when crushed produce a spicy aromatic perfume.
Leaves are in tight opposite clusters of 3-7 (heath-like), leaves appear linear but are actually triangular in cross section, being 5-14mm long x 0.5-1mm wide. Small tea-tree (Leptospermum) style flowers, massed along the stems, are white or pale pink, on slender stalks in groups of 2-4 along the upper stems, 0.7-1.2cm wide with 5 circular petals 2-3mm long with several tiny stamens, style usually 1.5-2mm long, produced in spring and summer (may be borne throughout the year, occassionally recorded in May-July). Woody fruits are 2-3mm wide and 3 valved, releasing small angular seed.', physical:'- Soft, arching, heath-like, aromatic, green foliage.
- Showing a profuse display of small, 0.7 - 1.2cm wide, white, tea-tree like flowers. Flowers during September - February [spring, summer].
- used for cut flowers or floral art
- Small, 0.2 - 0.3cm wide fruit. Fruits are woody.
- Small, angular seeds.', horticulture: '- low maintenance required. watering produces a more dense and prolific flowering specimen. Usually frost resistant.
- regular pruning - dense growth is encouraged by regular pruning
- cutting - half-ripened tip cuttings taken in autumn
- seed - seed can be collected from mature capsules in winter and early spring, can be direct seeded.
- readily available. semi-prostrate forms are also in cultivation - makes a suitable ground cover when planted at 1.5m apart, this form may also be used as a basket plant.', architectural_uses: 'bedding plant
hedge
potted specimen
reduces erosion - soil binder
windbreak', culture: '', conservation: '', wildlife: '', architectural_info: 'Makes a very attractive bedding plant if at height, showing off its features to best advantage. Its relatively small size makes it good for small hedges and windbreaks where it should be planted at a 1m density to be effective (note watering needs to be good for dense foliage). Native which will blend well with exotics.', characteristics: 'erect, somewhat weeping, woody shrub 1 - 2 m. With a dense canopy.', environment: '- full sun
- partial shade
- one drop
- Frost Tolerant
- Salt Tolerant', scientific_name: 'Astartea fascicularis')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: 'Broad prostrate groundcover. Forms a dense leafy carpet. Large scale ground cover. Numerous large conspicuous burgundy-red flowers. \'Sun Kissed Waters\' - variant with very attractive variegated leaves: green/yellow and blood red foliage. Long flowering period. Frost and sun hardy.
', synonym: 'G. laurifolia x G. willisii hybrid< 25 cm groundcover, 3 - 6 m across, woody shrub < 1m. With a dense canopy and vigorous growth rate.
', subspecies: '', location_name: '', general_info: '', additional_info: 'Leo Hodge of Ellaswood, eastern Victoria made a range of Poorinda grevilleas.', identification: '', physical:'- Attractive, Large (13-15 x 2.5 cm ) deeply lobed, dark green foliage.
- Showing a moderate display of large, 10 cmcm wide, red, one sided toothbrush inflorescence flowers. Flowers during September - November [spring].', horticulture: '- Will take some pedestrian traffic. Does not like alkaline soil. Good weed suppressor. 
- low maintenance required. Very hardy.
- cutting - Propagated from cuttings.
- readily available.', architectural_uses: 'groundcover suitable to dominate large expanses
groundcover suitable with some trees or shrubs
rockery plant', culture: '', conservation: 'Broad prostrate groundcover. Forms a dense leafy carpet. Large scale ground cover. Numerous large conspicuous red flowers.', wildlife: '', architectural_info: 'Broad prostrate groundcover. Forms a dense leafy carpet. Large scale ground cover. Good over retaining walls. Numerous large conspicuous red flowers. Will take some pedestrian traffic.', characteristics: '< 25 cm groundcover, 3 - 6 m across, woody shrub < 1m. With a dense canopy and vigorous growth rate.
', environment: 'full sun
partial shade
one drop
Prefers all types, well drained soils, with a neutral to acidic pH.', scientific_name: 'Grevillea \'Poorinda Royal Mantle\' (incomplete)')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Compact shrub to 1m high', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Full sun', scientific_name: 'Maireana oppositifolia')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Compact woody shrub. 1 x 1m. Masses of bright red bottle brush flowers. Very hardy.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Will survive without watering Perth.', scientific_name: 'Callistemon Little John')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Compact woody shrub. Stunning floral display.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Verticordia')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Dense low spreading shrub. Useful groundcover. Soft grey- green foliage. Flowers insignificant.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Very hardy coastal gardens. Drought tolerant.', scientific_name: 'Rhagodia  spinescens var deltophylla')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Dense rounded shrub to 1 m. Pink woolly flowers in spring & early summer', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Verticordia monadelpha')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Dwarf shrub', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '1-1.5m shrub pink surprise
1.5-2m dwarf Apricot', environment: 'Full sun, part shade', scientific_name: 'Nerium oleander cv pink Surprise')
CurrentPlant.create(name: '', common_name: '', family: 'AGAVACEAE', description: 'Foliage colour, terminal strap-like leaves. Strinking form.', synonym: '', subspecies: '', location_name: '', general_info: 'Prefers fertile, well-drained but water-retentive soil', additional_info: '', identification: 'Tall, evergreen sparsley branched shrub/tree. Strap-like leaves. Inconspicuous yellow-green flowers in late spring.', physical:'- Attractive, terminal, strap-like leaves, light green foliage.
- Showing a inconspicuous display of small, < 1cmcm wide, gold, Cluster of small flowers flowers. Flowers during September - December [spring].
- Grey Trunk', horticulture: '- Many varieties available: \'Red Sensation\' - red strap-like leaves, reasonably hardy but requires summer watering in Perth, frost tolerant
- low maintenance required.
- cutting - Propagate by seed, suckers or stem cuttings in summer
- readily available. Varieties with a range of foliage colours available. e.g. striped yellow/green, red, purple', architectural_uses: 'coastal plant - secondary
indoor plant
ornamental plant
potted specimen
tolerates harsh conditions', culture: '', conservation: '', wildlife: '', architectural_info: 'Tall slender shrub/tree with terminal strap-like leaves', characteristics: 'Tall shrub to 10m, 5 m, woody shrub >2m. With a open canopy.', environment: 'full sun
partial shade
one drop
Frost Tolerant', scientific_name: 'Cordyline australis (inc)')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: 'ground hugging banksia', synonym: '', subspecies: '', location_name: '', general_info: 'Found growing in sand, sandy loam or gravel, in shrubland and low woodland.', additional_info: 'Named after Charles Gardner (1896 - 1970), Government botanist of Western Australia and a keen student of Banksias. Type collection from near King George Sound, collected by William Baxter 1823. 
Distributed near the south coast (Western Australia) from Cranbrook to Bremer Bay and south towards Albany.', identification: 'Deep green leaves are scattered, upright, 10-40cm long, 2-6cm wide and deeply lobed, the lobes are triangular to broadly linear. New growth is rusty-brown, and covered with long shaggy hair. Inflorescence appears to be sitting on the ground and is terminal, 4-6cm wide, 3.5 to 10cm high. Old flower-spike persistent - brown then grey, few inconspicuous elliptic follicles 2-4cm long.', physical:'- Attractive, erect, deeply serrated, dark green foliage.
- Showing a moderate display of large, 4-10cm wide, brown, conspicuous, cylindrical flowers. Flowers during September - November [spring].
- used for cut flowers or floral art
- Large, 4-10cm wide, brown fruit. Fruits are persisent. Fruiting bodies are moderate in their abundance.
- Large, 2-4cm wide, winged seeds. Seed is inconspicuous in its abundance.', horticulture: '- Slow growing plant, flowering after 4 - 6 years from seed.
- low maintenance required.
- Phytophthora cinnamomi (dieback)
- not readily available.', architectural_uses: 'groundcovers for areas where some height is required
potted specimen
rockery plant', culture: '', conservation: 'Fire tolerant with new growth sprouting from the lignotuber. 
Related to B.goodii, a rare species with large unevenly dentate leaves and long villous bracts at the base of the flower spike.', wildlife: 'Attracts:
birds, insect-eaters 
birds, seed-eaters', architectural_info: 'interesting flower-spike', characteristics: 'prostrate, ground-hugging, woody shrub < 1m.
', environment: 'full sun
partial shade   
one drop
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Banksia gardneri')
CurrentPlant.create(name: '', common_name: '', family: 'IRIDACEAE', description: 'Grown for its attractive foliage and iris-shaped flowers. Flowers are generally short lived but blooms are regular and successive over spring and early summer.', synonym: '', subspecies: '', location_name: 'Agriculture Garden', general_info: 'Requires humus rich soil which is well drained but doesn\'t dry out completely', additional_info: 'this genus is native to southern Africa', identification: 'This clumping plant has long, narrow, tough, erect basal leaves. Branching stems bearing a succession of short-lived iris-like pale yellow flowers (with a brown patch on each petal) during summer. Cylindrical fruit is then seen on floral stems for some time post flowering.
Easily distinguished from D. grandiflora (Wild iris) when flowering. Wild iris having white - mauve/yellow marked flowers. Fruit capsule is shorter and more rounded, obovate, Wild iris is larger roughly 5cm long and cylindrical.', physical:'- Attractive, sword-like, green foliage.
- Showing a moderate display of medium, yellow, iris-like, pale flowers. Flowers during December - February [summer].
- Small, 2cm wide, brown fruit. Fruits are obovate-elliptic. Fruiting bodies are profuse in their abundance.
- Small, 0.5cm wide, brown, rounded-elliptic seeds.
', horticulture: '- low maintenance required. half hardy - tolerating temperatures to 0 degrees C. 
- minimal - do not remove flower stems as they continue to flower for several years
- division - large specimens can be propagated by division in spring (note that re-establishment may be difficult)
- seed - propagate by seed in autumn or spring, note this species readily self-seeds.
- readily available. popularly cultivated', architectural_uses: '- hedge
- potted specimen
- rockery plant
- waterside position', culture: '', conservation: '', wildlife: '', architectural_info: 'can be used as low hedges if planted at high densities. Often planted with D. grandiflora to create a contrast of flower colours (white with mauve and orange-yellow iris-like flowers).', characteristics: 'erect, rhizomatous, tuft-forming, Perennial herbaceous shrub < 1m.', environment: '- full sun
- one drop
- Prefers well drained soils.', scientific_name: 'Dietes bicolor')
CurrentPlant.create(name: '', common_name: '', family: 'IRIDACEAE', description: 'Grown for its attractive foliage and iris-shaped flowers. Flowers are generally short lived but blooms are regular and successive over spring and early summer. Can be successfully grown in semi-shade.', synonym: 'D. vegeta', subspecies: '', location_name: '', general_info: 'Requires humus rich soil which is well drained but doesn\'t dry out completely. Its native habitat being under tall trees in semi-shade. Note this species tolerates more shading than either D. grandiflora or D. bicolor.', additional_info: 'this genus is native to southern Africa', identification: 'This clumping plant has long, narrow, tough, erect basal leaves. Branching wiry stems bearing a succession of short-lived iris-like flowers during summer. Iris-like flowers are large (6-8cm diameter), predominantly white with attractive mauve and orange-yellow markings on the petals. Fruit is seen on floral stems for some time post flowering.
This plant is essentially a smaller version of Wild iris (D. grandiflora ) (note that the flowers are also slightly smaller (6-8cm diameter instead of 10cm)).', physical:'- Attractive, sword-like, green foliage.
- Showing a moderate display of large, 6 - 8cm wide, white, iris-like flowers. Flowers during December - February [summer].
- brown fruit. Fruiting bodies are moderate in their abundance.', horticulture: '- Note this Dietes species tolerates more shading than either D. grandiflora or D. bicolor.
- low maintenance required. half hardy - tolerating temperatures to 0 degrees C.
 - minimal - do not remove flower stems as they continue to flower for several years
- division - large specimens can be propagated by division in spring (note that re-establishment may be difficult)
- seed - propagate by seed in autumn or spring, note this species readily self-seeds.
- readily available.', architectural_uses: '- hedge
- rockery plant
- waterside position', culture: '', conservation: '', wildlife: '', architectural_info: 'can be used as low hedges if planted at high densities. Often planted with D. grandiflora to create a contrast of flower colours (white with mauve and orange-yellow iris-like flowers).', characteristics: 'erect, rhizomatous, dense clumping, Perennial herbaceous shrub < 1m.', environment: '- full sun
- partial shade
- one drop
- Prefers well drained soils.
', scientific_name: 'Dietes iridioides')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Hairy leaved coastal grass', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Good for stabilizing coastal sand dunes', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Coastal sand dunes', scientific_name: 'Spinifex hirsutus')
CurrentPlant.create(name: '', common_name: '', family: 'Poacea', description: 'Long leaved dune grass', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Good for stabilizing coastal sand dunes', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Spinifex longifolia')
CurrentPlant.create(name: '', common_name: '', family: 'LILIACEAE', description: 'Popular for its profuse display of blue-purple flowers during the summer months. Flowers are attractive, in umbels and stand out from the foliage on erect stalks. When not in flower the graceful arching strap-like lushious looking leaves provide an attractive exotic look.', synonym: 'A. orientalis', subspecies: 'orientalis', location_name: 'Student Administration gardens', general_info: 'will grow in most soil types', additional_info: 'Originating from southern Africa.', identification: 'Almost evergreen. Strap-shaped leaves are broad, dark green. Produces masses of large dense floral umbels made up of rich blue flowers borne on strong erect stems.', physical:'- Attractive, strappy, arching, dark green foliage.
- Showing a profuse display of large, blue, dense floral umbel flowers. Flowers during December - February [summer].', horticulture: '- Naturalise readily forming large clumps
- Minimal - remove dead leaves (mostly evergreen) at the end of winter
prune after flowering - remove old flower stems
- Division - propagate by division in late winter to early spring
seed - propagate from seed in spring or autumn. Note that named cultivars will not come true from seed.
- Readily available.', architectural_uses: '-cottage plant
- groundcover suitable with some trees or shrubs
- groundcovers for areas where some height is required
- groundcovers for small areas between shrubs or driveway strips
- potted specimen
- rockery plant', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '- clump-forming
- Perennial herbaceous shrub < 1m.', environment: '- Full sun
- Two drop
- Prefers well drained soils', scientific_name: 'Agapanthus praecox')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Profuse pink pompom Flowers spring (Sept)', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'Prune each year after flowering. Prune back when first planted to improve form.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Melaleuca')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: 'Prostrate banksia. Leaves bluish - dark green with contrasting rusty-brown new leaves.', synonym: '', subspecies: '', location_name: '', general_info: 'Requires well drained soil. From white sand heath or mallee heath, rainfall 400 mm.', additional_info: 'blechnifolia: genus of ferns - Blechnum, folia = leaves. Leaves resemble Blechnum in form.', identification: 'Prostrate species with flowers on ground level. Scattered erect leaves 25-45 cm long x 4-10 cm wide, deeply lobed but lobes liner to narrowly triangular.', physical:'- Attractive, erect 25-45 cm long x 4-10 cm wide, green foliage.
- Showing a moderate display of large, 6-16 cm long x 8 cm widecm wide, pink, cylindrical, woolley bracts at base flowers. Flowers during September - November [spring].
- Medium, 10-15 wide x 5-10 mm high x 20-30 longcm wide, brown fruit. Fruits are follicles, up to 25 elliptic. Fruiting bodies are moderate in their abundance.', horticulture: '- Vigorous, fast growing plant with stems running along the surface. Flowers in 4-5 years from seed. Leaves bluish - dark green. New leaves rusty-brown. Old grey flower cones persistent - folicles inconspicuous, opening after fire to release seeds.
- prune after flowering - Prune lightly, preferably at a branch fork.
- readily available.', architectural_uses: 'drought resistant
groundcover suitable to dominate large expanses
groundcover suitable with some trees or shrubs
ornamental plant', culture: '', conservation: 'Pollinated by honey possums. Killed by fire and regenerates from seed.
', wildlife: '', architectural_info: 'Flowers moderately conspicuous.', characteristics: 'woody shrub < 1m. With a open canopy.
', environment: '- full sun  
- one drop
- Prefers sand, well drained soils.', scientific_name: 'Banksia blechnifolia (incomplete)')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: 'quick growing, native ground cover', synonym: '', subspecies: '', location_name: '', general_info: 'Growing in deep white sand, in heath or mallee-heath, with an annual rainfall of 350-400mm.', additional_info: 'Petiolaris referring to the long petioles of the leaves. 
Type collection by George Maxwell, probably in 1861, between Cape le Grand and Cape Arid, Western Australia. 
Found near the south coast of Westen Australia, from Munglinup to Israelite bay (natural distribution).', identification: 'Branches prostrate, spreading to 2 to 3m across. Leaves scattered, erect, oblong to narrowly cuneate 20-40 x 2-4cm, velvety on upper surface becoming glabrous, white hairs below. New growth is deep red. Inflorescence terminal, cylindrical 9-16cm x 6-7cm wide at flowering. Flower-spike creamy-pink or creamy-red, becoming yellow-brown with age. Old flowers persistent. Follicles up to 20, elliptic, opening with fire.', physical:'- Attractive, erect, green foliage.
- Showing a moderate display of large, 9-16cm wide, brown, cylindrical flowers. Flowers during October - December.
used for cut flowers or floral art
- Large, 9-16cm wide fruit. Fruits are hairy. Fruiting bodies are inconspicuous in their abundance.
- Large, 2-3cm wide, winged seeds.', horticulture: '- East growing plant with stems on the suface, flowering 3-5 years from seed. Will grow in area subject to temporary inundation (up to a week after rain), if on sandy soil. After water has drained away, any build up of silt needs to be cleared away from the stems and foliage. Usually frost resistant.
- low maintenance required. 
- minimal - prune lightly, preferably at a branch fork
- Phytophthora cinnamomi (dieback)
- not readily available.', architectural_uses: 'groundcover suitable with some trees or shrubs
groundcovers for areas where some height is required
groundcovers for small areas between shrubs or driveway strips
potted specimen
reduces erosion - soil binder
trailing plant for walls', culture: '', conservation: 'petiolaris is killed by fire and regenerates from seed. 
Related species is B. blechnifolia which has deeply lobed leaves and red flowers. B. petiolaris being easily differentiated by its dentate leaves that are covered with white hair below.', wildlife: 'Attracts:
birds, insect-eaters 
birds, seed-eaters 
insects', architectural_info: 'Ground cover with some height (erect leaves 20 - 40cm), able to withstand dry conditions. Able to bind sand to minimise erosion damage.', characteristics: 'ground-covering, spreading, woody shrub < 1m. With a vigorous growth rate.
', environment: 'full sun   
one drop
Prefers sand, well drained soils.
Frost Tolerant', scientific_name: 'Banksia petiolaris')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Shrub 0.1 - 0.6m high. Yellow flowers July to December.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Hibbertia huegelii')
CurrentPlant.create(name: '', common_name: '', family: 'Rutaceae', description: 'Small shrub with oval leaves green on top grey underneath with fine hairs. White star flowers with 4 petals in spring.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '0.5 - 2m tall x 1-2 m', environment: 'Tolerates coastal exposure', scientific_name: 'Correa alba')
CurrentPlant.create(name: '', common_name: '', family: 'STERCULIACEAE', description: 'Useful coastal shrub. Pendulous pink hairy flowers', synonym: '', subspecies: '', location_name: 'grown in King\'s Park', general_info: 'favours limestone soils from Dirk Hartog Island to Israelite Bay and Rottnest and Garden Islands.', additional_info: '', identification: 'Spreading open woody shrub. Silver-grey foliage. Flowers pendulous and in clusters of 1-5. Petals pink, hairy with deep puple centres. Stamens 5. Leaves narrow linear up to 60 mm with rolled margins. Two basal leaf-like stipules about half as long as the leaf.', physical:'- Attractive, up to 60mm long, linear with rolled margins., silver foliage.
- Showing a moderate display of medium, to 8 mmcm wide, pink, 5mm, pink to verypale blue and scale like petals, flowers. Flowers during July - October.
- Medium, to 2.5mmcm wide fruit are displayed during November - January. Fruits are 2.5 mm wide. 5 carpels.', horticulture: '- good hedging specimen 
- low maintenance required.
- readily available. From Australian plant nurseries', architectural_uses: 'coastal plant - secondary
cottage plant
hedge
rockery plant
tolerates harsh conditions', culture: '', conservation: '', wildlife: '', architectural_info: 'Useful coastal shrub. Contrasting silver-grey foliage.', characteristics: 'spreading shrub, 1-2m, woody shrub 1 - 2 m. With a open canopy.
', environment: 'full sun
one drop - water during establishment.', scientific_name: 'Guichenotia ledifolia')
CurrentPlant.create(name: '', common_name: '', family: '', description: 'Woody shrub 75cm - 1.5m high. Soft hairy leaves. Red flowers in spring.', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Calothamnus hirsutus')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: '?')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'A')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: 'God for coastal sand dune restoration.', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: 'Coastal dunes, pictue of dunes near Penguin Is Rockingham.', scientific_name: 'Acacia rostellifera')
CurrentPlant.create(name: '', common_name: '', family: 'MIMOSACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'similar to Acacia littorea which is not found in Perth. A. truncata found at Reabold Hill.', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'woody shrub >2m.', environment: '', scientific_name: 'Acacia truncata (incomplete)')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'woody shrub >2m.', environment: '', scientific_name: 'Banksia ericifolia')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Carpobrotus')
CurrentPlant.create(name: '', common_name: '', family: 'AGAVACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: 'Tall thin trunk with a rosette of long leaves 10 cm wide x 60 cm long at the tops.', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tall tree-like, woody shrub >2m.', environment: '', scientific_name: 'Cordyline indivisa')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Cycad thouarsi')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Dodonea viscosa purpurea')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Eremophila ?')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Eremophila 2')
CurrentPlant.create(name: '', common_name: '', family: 'MYRTACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'tree < 6m.
', environment: '', scientific_name: 'Eucalyptus foecunda')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: 'Black cockatoos and other parrots eat nectar & seed', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Eucalyptus Lemanii')
CurrentPlant.create(name: '', common_name: '', family: 'MYRTACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'woody shrub 1 - 2 m.', environment: '', scientific_name: 'Eucalyptus tetragona (incomplete)')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Ficus')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Golden Cane Palm')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Grevilea')
CurrentPlant.create(name: '', common_name: '', family: 'Proteaceae', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Grevillea')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Grevillea')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: '', synonym: 'banksii x bipinnatifida (incomplete)', subspecies: '', location_name: '', general_info: 'Tolerates a wise range of conditions including acid to alkaline soils.', additional_info: 'Commemorating Charles F. Greville, who was an early president of the Royal Horticultural Society. \'Robyn Gordon\' bred by Gordon.', identification: 'Shrub 1-2 m. Leaves simple, deeply bipinnatisect, 12 cm long and 12 cm wide with 11-15 prongs. Dense terminal raceme 10-15 cm long with 90-100 orange-red flowers. Upper stems are grey and hairy, ribbed below leaf bases.', physical:'Attractive, Leaves simple, deeply bipinnatisect, 12 cm long an, dark green foliage.', horticulture: '- low maintenance required.
- readily available.', architectural_uses: '', culture: 'Hybrid between a Western Australian and Queensland Grevillea.', conservation: 'Tolerates a wide range of conditions. Bird attracting.', wildlife: '', architectural_info: 'Medium shrub with attractive foliage and long display of striking, large flowers.', characteristics: 'Medium shrub, 1.5 m, woody shrub 1 - 2 m. With a vigorous growth rate.', environment: 'two drop
Prefers all types soils, with a neutral to acidic pH.', scientific_name: 'Grevillea \'Robyn Gordon\'')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'growing naturally on limestone soils, will tolerate most soil types. Drought tolerant. Needs little or no fertiliser, avoid fertilisers with P.', additional_info: 'Extending from Wanneroo to Yalgorup National Park, and in an isolated pocked inland near Dongara.', identification: 'Leaves are needle-like (1.5-3.5cm long), light green, divided into segments (3-lobed to 5 lobed or simple, lobes linear 1-1.5mm wide, with recurved margins), branchlets hairy. Flowers are in short dense clusters (1.5-3cm long), white (pink when in buds) borne from winter and spring (mostly July - September). Fruit is a follicle (1cm long) with 2 winged seeds.', physical:'- Attractive, needle-like, light green foliage.
- Showing a profuse display of small, 1.5 - 3cm wide, white, floral cluster flowers. Flowers during July - September.
- Small, 1cm wide, brown fruit. Fruits are follicle. Fruiting bodies are inconspicuous in their abundance.
- Small, winged seeds.', horticulture: '- low maintenance required. Very lime tolerant. Do not over-fertilise (especially with high P fertilisers), do benefit from light well balanced fertilisers. Containerised specimens should be watered moderately, less in winter.
- prune after flowering - prune to maintain density
- cutting - Half-ripened tip-cuttings should be taken in early to mid summer (when young growth has started to harden), autumn or winter. Strike into a sand/peat mix and keep in a warm humid environment (may be advantageous to wound the base to the depth of the cambium, apply a hormone treatment - root promoting dust is beneficial, mist sprays and bottom heat are also recommended for most species). Note once strike or seedling has established be careful not to disturb the roots when planting out.
- insect attack - leaf borers, scale insects and bugs (crusader bug) damage foliage
- slugs and snails - leaf-eating caterpillars damage foliage
- readily available. a prostrate form is available with pale pink flowers (good rockery or border plant, groundcover)', architectural_uses: 'coastal plant - secondary
fence screener
hedge
potted specimen', culture: '', conservation: '', wildlife: 'Attracts:
birds, honey-eaters 
birds, insect-eaters', architectural_info: 'Spreading groundcover. very hardy. Also low hedge or screen.', characteristics: 'compact, spreading, rounded, woody shrub 1 - 2 m. With a dense canopy and vigorous growth rate.', environment: 'full sun
one drop
Prefers sand, well drained soils, with a neutral to alkaline pH.
Frost Tolerant', scientific_name: 'Grevillea crithmifolia')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Adaptable hardy plant. Grows well in hot/dry conditions. Prefers sun to dappled shade. Some forms will grow in slightly alkaline soils.', additional_info: 'Latin \'nudis\' - naked, flora - flower. Nudiflora refers to the long leafless branches.', identification: 'Prostrate spreading groundcover. Leaves linear, simple, margins revolute. Clusters of small red and yellow flowers, among and beynd the foliage for most of the year. Sometimes suckering.', physical:'- Linear, simple, margins revolute, green foliage.
- Showing a moderate display of medium, 2 cmcm wide, red, Red & yellow flowers. Flowers all year round.', horticulture: '- Some forms up to 2 m high. 
- low maintenance required. Water during dry summers.
- readily available. Available from Australian plant nurseries.', architectural_uses: 'basket plant
coastal plant - secondary
groundcover suitable to dominate large expanses
groundcover suitable with some trees or shrubs
ornamental plant
rockery plant
tolerates harsh conditions', culture: '', conservation: 'Long loved species. Attracts honey eaters', wildlife: '', architectural_info: 'Low groundcover with red & yellow flowers most of the year. Resistant to salt spray and strong winds.', characteristics: 'Groundcover to 30 cm, 2 m, woody shrub < 1m. With a dense canopy.', environment: 'full sun
partial shade   
one drop
Prefers all types soils, with a neutral to acidic pH.
Frost Tolerant
Wind Tolerant', scientific_name: 'Grevillea nudiflora')
CurrentPlant.create(name: '', common_name: '', family: 'PROTEACEAE', description: '', synonym: '', subspecies: '', location_name: 'WA confined to a narrow coastal limestone belt from Jurien Bay to Coolimba', general_info: '', additional_info: '', identification: '', physical:'- Green foliage.
- Showing a inconspicuous display of orange, colours red orange yellow flowers. Flowers during June - November [spring, winter].', horticulture: '', architectural_uses: 'coastal plant - primary
drought resistant
fence screener
tolerates harsh conditions
windbreak', culture: '', conservation: '', wildlife: '', architectural_info: 'Large screen or windbreak on harsh coastal limestone Tolerant of salt laden winds', characteristics: 'Densely branched shrub, up to 3 m, woody shrub >2m.', environment: 'full sun
one drop
Prefers sand, well drained soils, with a neutral to alkaline pH
Frost Tolerant
Wind Tolerant
Salt Tolerant', scientific_name: 'Grevillea olivacea [inc]')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Hake 1')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Hake 2')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Hibiscus')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Hypocalyma')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Isopogon')
CurrentPlant.create(name: '', common_name: '', family: 'JUNCACEAE', description: '', synonym: '', subspecies: '', location_name: '', general_info: 'Found along fresh to brackish watercourses, lakes and seasonally damp areas', additional_info: '', identification: 'Tufted rush <2 m. Stems cylindrical in cross section (2-7mm) with a central pith. Leaves reduced to basal sheaths.Inflorescence 15 cm long.', physical:'- Basal sheaths up to 23 cm long, green foliage.
- Showing a inconspicuous display of small, 2 mmcm wide, yellow, small straw coloured flowers 6 segments flowers. Flowers during September - November [spring].
- Small, 2 mmcm wide, brown fruit are displayed during December - February [summer]. Fruits are inflorescence up to 15 cm. Fruiting bodies are minimal in their abundance.', horticulture: '', architectural_uses: '- waterside position
- wetland plant', culture: '', conservation: 'Used along wetlands, binds soil', wildlife: '', architectural_info: '', characteristics: 'Perennial sedge > 1m.', environment: '- full sun
- may require summer watering.', scientific_name: 'Juncus pallidus')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Leucospermum')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Pandanas')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Pelargonium')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: 'Peak flowering time late Sept/early Oct', environment: '', scientific_name: 'Pimelea')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Plumeria')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Raphiolepis cv Apple Blossum')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Regalia?')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Scaffold aneura')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Swainsona')
CurrentPlant.create(name: '', common_name: '', family: 'Bignoniaceae', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Tecoma alata')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Tetragona decumbens')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Unknown 2')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Unknown 3')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Unknown1')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Viburnum?')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Water hyacinth')
CurrentPlant.create(name: '', common_name: '', family: '', description: '', synonym: '', subspecies: '', location_name: '', general_info: '', additional_info: '', identification: '', physical:'', horticulture: '', architectural_uses: '', culture: '', conservation: '', wildlife: '', architectural_info: '', characteristics: '', environment: '', scientific_name: 'Yellow Broome')


