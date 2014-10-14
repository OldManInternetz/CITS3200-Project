#encoding: utf-8 

# Scanned the Bento data and made these up. Subject to change after input from Tinka.
# Take note of variable names @quin, etc...

puts('Creating Categorised Data...')

  @quin = SoilType.create(name: 'Quindalup') 
  @cott = SoilType.create(name: 'Cottesloe') 
  @karr = SoilType.create(name: 'Karrakatta') 
  @guil = SoilType.create(name: 'Guildford') 
  @bass = SoilType.create(name: 'Bassendean') 
  @beer = SoilType.create(name: 'Beermullah') 
  @forr = SoilType.create(name: 'Forrestfield') 
  @herd = SoilType.create(name: 'Herdsman') 
  @swan = SoilType.create(name: 'Swan Vasse') 
  @dard = SoilType.create(name: 'Dardanup Darling Plateau') 
  @gran = SoilType.create(name: 'Granite Darling Plateau') 
  @late = SoilType.create(name: 'Laterite Dalring Plateau') 
  @scar = SoilType.create(name: 'Scarp Darling Plateau') 
  @yang = SoilType.create(name: 'Yanga') 
  @serp = SoilType.create(name: 'Serpentine River')

  @red = FlowerColour.create(name: 'Red')
  @blue = FlowerColour.create(name: 'Blue')
  @green = FlowerColour.create(name: 'Green')
  @purple = FlowerColour.create(name: 'Purple')
  @yellow = FlowerColour.create(name: 'Yellow')
  @orange = FlowerColour.create(name: 'Orange')
  @pink = FlowerColour.create(name: 'Pink')
  @white = FlowerColour.create(name: 'White')


  
@wa = Origin.create(name: 'Western Australian')
@aus = Origin.create(name: 'Australian')
@exotic = Origin.create(name: 'Exotic')

@climber = Type.create(name: 'Climber') 
@conifer = Type.create(name: 'Conifer') 
@grass = Type.create(name: 'Grass') 
@fern = Type.create(name: 'Fern') 
@herbaceous_shrub = Type.create(name: 'Herbaceous Shrub') 
@palm = Type.create(name: 'Palm') 
@sedge = Type.create(name: 'Sedge') 
@succulent = Type.create(name: 'Succulent') 
@tree = Type.create(name: 'Tree') 
@woodyshrub = Type.create(name: 'Woody Shrub')

@small = Size.create(name: 'Small (to 1.5m)') 
@medium = Size.create(name: 'Medium (1.5m to 2.5m)') 
@large = Size.create(name: 'Large (2.5m +)') 

@leaf_green = LeafColour.create(name: 'Green') 
@dark_green = LeafColour.create(name: 'Dark Green') 
@grey_green = LeafColour.create(name: 'Grey-Green', alt_colour: '#486649') 
@grey = LeafColour.create(name: 'Grey') 
@silver = LeafColour.create(name: 'Silver')

@cool = Climate.create(name: 'Cool')
@cold = Climate.create(name: 'Cold')
@tropical = Climate.create(name: 'Tropical')
@warm = Climate.create(name: 'Warm')
@mediterranean = Climate.create(name: 'Meditteranean')
@temperate = Climate.create(name: 'Temperate')
@subtropical = Climate.create(name: 'Sub-Tropical')
@semi_arid = Climate.create(name: 'Semi-Arid')
@arid = Climate.create(name: 'Arid')
@hot = Climate.create(name: 'Hot')
  
### Add Categorites to Plants here.
puts('Adding Categories to Plants...')

CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid').origins << @aus
CurrentPlant.find_by_scientific_name('Scaevola \'Purple Fanfare\' (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Arctotis x hybrida').origins << @exotic
CurrentPlant.find_by_scientific_name('Lobelia alata').origins << @aus
CurrentPlant.find_by_scientific_name('Boronia crenulata').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia ashbyi').origins << @wa
CurrentPlant.find_by_scientific_name('Viola hederacea').origins << @aus
CurrentPlant.find_by_scientific_name('Baumea juncea').origins << @aus
CurrentPlant.find_by_scientific_name('Banksia baxteri (inc)').origins << @wa
CurrentPlant.find_by_scientific_name('Acanthus mollis').origins << @exotic
CurrentPlant.find_by_scientific_name('Asplenium australasicum').origins << @aus
CurrentPlant.find_by_scientific_name('Macropidia fuliginosa (incomplete)').origins << @wa
CurrentPlant.find_by_scientific_name('Robinia pseudoacacia').origins << @aus
CurrentPlant.find_by_scientific_name('Lechenaultia biloba').origins << @wa
CurrentPlant.find_by_scientific_name('Euryops pectinatus').origins << @exotic
CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Melaleuca quinquenervia').origins << @aus
CurrentPlant.find_by_scientific_name('Lophostemon confertus').origins << @aus
CurrentPlant.find_by_scientific_name('Ajuga reptans').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia grandis').origins << @wa
CurrentPlant.find_by_scientific_name('Pittosporum phylliraeoides (incomplete)').origins << @wa
CurrentPlant.find_by_scientific_name('Livistonia australis (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Baeckea camphorosmae').origins << @wa
CurrentPlant.find_by_scientific_name('Cinnamomum camphora').origins << @exotic
CurrentPlant.find_by_scientific_name('Phoenix canariensis').origins << @exotic
CurrentPlant.find_by_scientific_name('Hedera canariensis').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia attenuata').origins << @wa
CurrentPlant.find_by_scientific_name('Calodendron capense').origins << @exotic
CurrentPlant.find_by_scientific_name('Aspidistra elatior').origins << @exotic
CurrentPlant.find_by_scientific_name('Raphiolepis indica').origins << @aus
CurrentPlant.find_by_scientific_name('Sapium sebiferum (incomplete)').origins << @exotic
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Olearia axillaris').origins << @wa
CurrentPlant.find_by_scientific_name('Eucalyptus utilis').origins << @aus
CurrentPlant.find_by_scientific_name('Westringia fruiticosa').origins << @aus
CurrentPlant.find_by_scientific_name('Lepidosperma gladiatum').origins << @aus
CurrentPlant.find_by_scientific_name('Templetonia retusa').origins << @wa
CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Erythrina indica').origins << @exotic
CurrentPlant.find_by_scientific_name('Correa reflexa').origins << @aus
CurrentPlant.find_by_scientific_name('Dampiera linearis').origins << @wa
CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana').origins << @wa
CurrentPlant.find_by_scientific_name('Conospermum stoechadis').origins << @wa
CurrentPlant.find_by_scientific_name('Adenanthos cygnorum').origins << @wa
CurrentPlant.find_by_scientific_name('Acacia saligna').origins << @wa
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').origins << @wa
CurrentPlant.find_by_scientific_name('Cynodon dactylon').origins << @exotic
CurrentPlant.find_by_scientific_name('Dryandra nivea').origins << @wa
CurrentPlant.find_by_scientific_name('Myoporum parvifolium').origins << @aus
CurrentPlant.find_by_scientific_name('Ficus pumila').origins << @exotic
CurrentPlant.find_by_scientific_name('Grewia occidentalis').origins << @exotic
CurrentPlant.find_by_scientific_name('Howea belmoreana').origins << @aus
CurrentPlant.find_by_scientific_name('Leucophyta brownii').origins << @aus
CurrentPlant.find_by_scientific_name('Brachyscome multifida').origins << @aus
CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis').origins << @wa
CurrentPlant.find_by_scientific_name('Hovea pungens').origins << @aus
CurrentPlant.find_by_scientific_name('Coleonema pulchrum').origins << @exotic
CurrentPlant.find_by_scientific_name('Acacia lasiocarpa').origins << @wa
CurrentPlant.find_by_scientific_name('Agonis flexuosa \'nana\'').origins << @wa
CurrentPlant.find_by_scientific_name('Melaleuca pentagona').origins << @wa
CurrentPlant.find_by_scientific_name('Hedera helix').origins << @exotic
CurrentPlant.find_by_scientific_name('Callistemon phoeniceus').origins << @wa
CurrentPlant.find_by_scientific_name('Clivia nobilis').origins << @exotic
CurrentPlant.find_by_scientific_name('Brachychiton acerifolius').origins << @aus
CurrentPlant.find_by_scientific_name('Acacia iteaphylla').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus rudis').origins << @wa
CurrentPlant.find_by_scientific_name('Melaleuca rhaphiophylla').origins << @aus
CurrentPlant.find_by_scientific_name('Gazania sp.').origins << @exotic
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Anigozanthos viridus').origins << @wa
CurrentPlant.find_by_scientific_name('Conostylis candicans').origins << @aus
CurrentPlant.find_by_scientific_name('Melaleuca incana').origins << @wa
CurrentPlant.find_by_scientific_name('Hibbertia scandens').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').origins << @wa
CurrentPlant.find_by_scientific_name('Doryanthes excelsa(inc)').origins << @aus
CurrentPlant.find_by_scientific_name('Chorizema cordatum').origins << @wa
CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Banksia ilicifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Gleditsia tricanthos').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia hookeriana').origins << @wa
CurrentPlant.find_by_scientific_name('Casuarina equisetifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus erythrocorys').origins << @wa
CurrentPlant.find_by_scientific_name('Cupressus sempervirens').origins << @exotic
CurrentPlant.find_by_scientific_name('Jacaranda mimosifolia').origins << @exotic
CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus marginata').origins << @wa
CurrentPlant.find_by_scientific_name('Baumea articulata').origins << @aus
CurrentPlant.find_by_scientific_name('Howea forsteriana (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Dichondra repens').origins << @aus
CurrentPlant.find_by_scientific_name('Kingia australis').origins << @wa
CurrentPlant.find_by_scientific_name('Ficinia nodosa').origins << @aus
CurrentPlant.find_by_scientific_name('Cyathea cooperi').origins << @aus
CurrentPlant.find_by_scientific_name('Darwinia citriodora').origins << @wa
CurrentPlant.find_by_scientific_name('Corymbia citriodora').origins << @aus
CurrentPlant.find_by_scientific_name('Acmena smithii').origins << @aus
CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)').origins << @exotic
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').origins << @exotic
CurrentPlant.find_by_scientific_name('Macadamia tetraphylla (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Ginkgo biloba').origins << @exotic
CurrentPlant.find_by_scientific_name('Corymbia calophylla').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia menziesii').origins << @wa
CurrentPlant.find_by_scientific_name('Ficus macrophylla').origins << @aus
CurrentPlant.find_by_scientific_name('Convolvulus sabatius').origins << @exotic
CurrentPlant.find_by_scientific_name('Eucalyptus macrocarpa').origins << @aus
CurrentPlant.find_by_scientific_name('Acacia aneura').origins << @aus
CurrentPlant.find_by_scientific_name('Hymenosporum flavum').origins << @aus
CurrentPlant.find_by_scientific_name('Carpobrotus virescens').origins << @wa
CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana').origins << @wa
CurrentPlant.find_by_scientific_name('Araucaria heterophylla').origins << @exotic
CurrentPlant.find_by_scientific_name('Clematis microphylla').origins << @aus
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').origins << @wa
CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus').origins << @wa
CurrentPlant.find_by_scientific_name('Eremaea pauciflora').origins << @wa
CurrentPlant.find_by_scientific_name('Murraya paniculata').origins << @exotic
CurrentPlant.find_by_scientific_name('Dryandra sessilis').origins << @wa
CurrentPlant.find_by_scientific_name('Agonis flexuosa').origins << @wa
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').origins << @aus
CurrentPlant.find_by_scientific_name('Aptenia cordifolia').origins << @exotic
CurrentPlant.find_by_scientific_name('Hakea laurina').origins << @wa
CurrentPlant.find_by_scientific_name('Pimelea ferruginea').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon').origins << @aus
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Delonix regia').origins << @exotic
CurrentPlant.find_by_scientific_name('Ficus rubiginosa').origins << @aus
CurrentPlant.find_by_scientific_name('Tipuana tipu').origins << @exotic
CurrentPlant.find_by_scientific_name('Phoenix roebelenii').origins << @exotic
CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Acacia acuminata').origins << @wa
CurrentPlant.find_by_scientific_name('Anigozanthos manglesii').origins << @wa
CurrentPlant.find_by_scientific_name('Boronia heterophylla').origins << @wa
CurrentPlant.find_by_scientific_name('Syncarpia glomifera').origins << @aus
CurrentPlant.find_by_scientific_name('Acacia cyclops').origins << @aus
CurrentPlant.find_by_scientific_name('Corymbia ficifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis').origins << @aus
CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Callitris preissii').origins << @aus
CurrentPlant.find_by_scientific_name('Melaleuca lanceolata').origins << @aus
CurrentPlant.find_by_scientific_name('Casuarina obesa').origins << @aus
CurrentPlant.find_by_scientific_name('Melaleuca cuticularis').origins << @aus
CurrentPlant.find_by_scientific_name('Beaufortia squarrosa').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia prionotes').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia coccinea').origins << @wa
CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Hakea petiolaris').origins << @wa
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').origins << @aus
CurrentPlant.find_by_scientific_name('Eremophila nivea').origins << @aus
CurrentPlant.find_by_scientific_name('Cymbopogon obtectus').origins << @aus
CurrentPlant.find_by_scientific_name('Grevillea robusta').origins << @aus
CurrentPlant.find_by_scientific_name('Senna artemisioides').origins << @aus
CurrentPlant.find_by_scientific_name('Angophora costata').origins << @aus
CurrentPlant.find_by_scientific_name('Hemiandra pungens').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').origins << @aus
CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana').origins << @wa
CurrentPlant.find_by_scientific_name('Chlorophytum comosum').origins << @exotic
CurrentPlant.find_by_scientific_name('Lomandra longifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Corymbia maculata').origins << @aus
CurrentPlant.find_by_scientific_name('Dianella revoluta').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').origins << @aus
CurrentPlant.find_by_scientific_name('Banksia littoralis').origins << @wa
CurrentPlant.find_by_scientific_name('Crinum pedunculatum').origins << @aus
CurrentPlant.find_by_scientific_name('Agonis linearifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Hypocalymma robustum').origins << @wa
CurrentPlant.find_by_scientific_name('Thryptomene saxicola (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Eremophila glabra').origins << @aus
CurrentPlant.find_by_scientific_name('Coprosma repens').origins << @exotic
CurrentPlant.find_by_scientific_name('Scaevola crassifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Hovea elliptica').origins << @wa
CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala').origins << @aus
CurrentPlant.find_by_scientific_name('Parthenocissus quiniquefolia (incomplete)').origins << @exotic
CurrentPlant.find_by_scientific_name('Eucalyptus wandoo').origins << @wa
CurrentPlant.find_by_scientific_name('Chamelaucium ciliatum').origins << @aus
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').origins << @wa
CurrentPlant.find_by_scientific_name('Callistemon viminalis').origins << @aus
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').origins << @aus
CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)').origins << @aus
CurrentPlant.find_by_scientific_name('Melia azedarach var. australasica (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Brachychiton discolour').origins << @aus
CurrentPlant.find_by_scientific_name('Acacia xanthina').origins << @wa
CurrentPlant.find_by_scientific_name('Dietes grandiflora').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia victoriae').origins << @wa
CurrentPlant.find_by_scientific_name('Adenanthos sericeus').origins << @wa
CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Eucalyptus leucoxylon').origins << @aus
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').origins << @wa
CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora').origins << @exotic
CurrentPlant.find_by_scientific_name('Astartea fascicularis').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').origins << @aus
CurrentPlant.find_by_scientific_name('Cordyline australis (inc)').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia gardneri').origins << @wa
CurrentPlant.find_by_scientific_name('Dietes bicolor').origins << @exotic
CurrentPlant.find_by_scientific_name('Dietes iridioides').origins << @exotic
CurrentPlant.find_by_scientific_name('Agapanthus praecox').origins << @exotic
CurrentPlant.find_by_scientific_name('Banksia blechnifolia (incomplete)').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia petiolaris').origins << @wa
CurrentPlant.find_by_scientific_name('Guichenotia ledifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Acacia truncata (incomplete)').origins << @wa
CurrentPlant.find_by_scientific_name('Banksia ericifolia').origins << @aus
CurrentPlant.find_by_scientific_name('Cordyline indivisa').origins << @exotic
CurrentPlant.find_by_scientific_name('Eucalyptus foecunda').origins << @wa
CurrentPlant.find_by_scientific_name('Eucalyptus tetragona (incomplete)').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea \'Robyn Gordon\'').origins << @aus
CurrentPlant.find_by_scientific_name('Grevillea crithmifolia').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea nudiflora').origins << @wa
CurrentPlant.find_by_scientific_name('Grevillea olivacea [inc]').origins << @wa
CurrentPlant.find_by_scientific_name('Juncus pallidus').origins << @aus

puts('Done Origins...')

@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Scaevola \'Purple Fanfare\' (incomplete)')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Arctotis x hybrida')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Lobelia alata')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia ashbyi')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Viola hederacea')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Baumea juncea')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Banksia baxteri (inc)')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Acanthus mollis')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Begonia')
@fern.current_plants << CurrentPlant.find_by_scientific_name('Macropidia fuliginosa (incomplete)')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Andersonia gregoria')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca quinquenervia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Lophostemon confertus')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Ajuga reptans')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Clivia miniata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Livistonia australis (incomplete)')
@palm.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Cinnamomum camphora')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Phoenix canariensis')
@palm.current_plants << CurrentPlant.find_by_scientific_name('Hedera canariensis')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Calodendron capense')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Zamia furfuracea')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca huegelii')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Olearia axillaris')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus utilis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Westringia fruiticosa')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Lepidosperma gladiatum')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Templetonia retusa')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Erythrina indica')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Correa reflexa')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus torquata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Cynodon dactylon')
@grass.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Myoporum parvifolium')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Ficus pumila')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Grewia occidentalis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Howea belmoreana')
@palm.current_plants << CurrentPlant.find_by_scientific_name('Leucophyta brownii')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome multifida')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Coleonema pulchrum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Agonis flexuosa \'nana\'')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Hedera helix')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Callistemon phoeniceus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Clivia nobilis')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Brachychiton acerifolius')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia iteaphylla')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Neurachne alopecuroides')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Gazania sp.')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea obtusifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Anigozanthos viridus')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca incana')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Hibbertia scandens')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus caesia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Doryanthes excelsa(inc)')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Chorizema cordatum')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Gleditsia tricanthos')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Banksia hookeriana')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Casuarina equisetifolia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus erythrocorys')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Cupressus sempervirens')
@conifer.current_plants << CurrentPlant.find_by_scientific_name('Jacaranda mimosifolia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus marginata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Baumea articulata')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Howea forsteriana (incomplete)')
@palm.current_plants << CurrentPlant.find_by_scientific_name('Dichondra repens')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Kingia australis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Cyathea cooperi')
@fern.current_plants << CurrentPlant.find_by_scientific_name('Darwinia citriodora')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Corymbia citriodora')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acmena smithii')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Plantanus x acerfolia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Macadamia tetraphylla (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Ginkgo biloba')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Mandevilla')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Ficus macrophylla')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Convolvulus sabatius')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus macrocarpa')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia aneura')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Pilots exaltatus')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Carpobrotus virescens')
@succulent.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Araucaria heterophylla')
@conifer.current_plants << CurrentPlant.find_by_scientific_name('Ceratoptalum gummiferum')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Agonis flexuosa')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens')
@succulent.current_plants << CurrentPlant.find_by_scientific_name('Aptenia cordifolia')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Hakea laurina')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Pimelea ferruginea')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Delonix regia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Ficus rubiginosa')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia pulchella')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Tipuana tipu')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Phoenix roebelenii')
@palm.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia acuminata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Anigozanthos manglesii')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Boronia heterophylla')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Syncarpia glomifera')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia cyclops')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Corymbia ficifolia')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Callitris preissii')
@conifer.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca lanceolata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Casuarina obesa')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca cuticularis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Beaufortia squarrosa')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia prionotes')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Banksia coccinea')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Hakea petiolaris')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca nesophila')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eremophila nivea')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Cymbopogon obtectus')
@grass.current_plants << CurrentPlant.find_by_scientific_name('Grevillea robusta')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Senna artemisioides')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Angophora costata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea thelemanniana')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Chlorophytum comosum')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Lomandra longifolia')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Corymbia maculata')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Crinum pedunculatum')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Agonis linearifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Thryptomene saxicola (incomplete)')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Coprosma repens')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Scaevola crassifolia')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Hovea elliptica')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Parthenocissus quiniquefolia (incomplete)')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus wandoo')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Chamelaucium ciliatum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Callistemon viminalis')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca leucadendra')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Melia azedarach var. australasica (incomplete)')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Brachychiton discolour')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Acacia xanthina')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Dietes grandiflora')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Wollemia nobilis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos sericeus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus leucoxylon')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Anigozanthos flavidus')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Verticordia nitens')
@climber.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Maireana oppositifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Verticordia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia gardneri')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Dietes bicolor')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Dietes iridioides')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Spinifex hirsutus')
@herbaceous_shrub.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia petiolaris')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Hibbertia huegelii')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Guichenotia ledifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus hirsutus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Banksia ericifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Carpobrotus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Cycad thouarsi')
@tree.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus Lemanii')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Ficus')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea \'Robyn Gordon\'')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea crithmifolia')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Grevillea olivacea [inc]')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Hake 1')
@sedge.current_plants << CurrentPlant.find_by_scientific_name('Leucospermum')
@woodyshrub.current_plants << CurrentPlant.find_by_scientific_name('Tetragona decumbens')

puts('Done Types...')

CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid').sizes << @large
CurrentPlant.find_by_scientific_name('Asplenium australasicum').sizes << @large
CurrentPlant.find_by_scientific_name('Robinia pseudoacacia').sizes << @large
CurrentPlant.find_by_scientific_name('Melaleuca quinquenervia').sizes << @small
CurrentPlant.find_by_scientific_name('Lophostemon confertus').sizes << @large
CurrentPlant.find_by_scientific_name('Baeckea camphorosmae').sizes << @small
CurrentPlant.find_by_scientific_name('Cinnamomum camphora').sizes << @large
CurrentPlant.find_by_scientific_name('Sapium sebiferum (incomplete)').sizes << @small
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').sizes << @large
CurrentPlant.find_by_scientific_name('Westringia fruiticosa').sizes << @small
CurrentPlant.find_by_scientific_name('Lepidosperma gladiatum').sizes << @large
CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)').sizes << @large
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').sizes << @large
CurrentPlant.find_by_scientific_name('Howea belmoreana').sizes << @small
CurrentPlant.find_by_scientific_name('Acacia lasiocarpa').sizes << @small
CurrentPlant.find_by_scientific_name('Brachychiton acerifolius').sizes << @large
CurrentPlant.find_by_scientific_name('Hibbertia scandens').sizes << @large
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').sizes << @small
CurrentPlant.find_by_scientific_name('Doryanthes excelsa(inc)').sizes << @large
CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)').sizes << @large
CurrentPlant.find_by_scientific_name('Cupressus sempervirens').sizes << @small
CurrentPlant.find_by_scientific_name('Cyathea cooperi').sizes << @small
CurrentPlant.find_by_scientific_name('Corymbia citriodora').sizes << @large
CurrentPlant.find_by_scientific_name('Acmena smithii').sizes << @large
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').sizes << @large
CurrentPlant.find_by_scientific_name('Ficus macrophylla').sizes << @large
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').sizes << @large
CurrentPlant.find_by_scientific_name('Murraya paniculata').sizes << @large
CurrentPlant.find_by_scientific_name('Agonis flexuosa').sizes << @large
CurrentPlant.find_by_scientific_name('Aptenia cordifolia').sizes << @large
CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon').sizes << @large
CurrentPlant.find_by_scientific_name('Tipuana tipu').sizes << @large
CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis').sizes << @large
CurrentPlant.find_by_scientific_name('Beaufortia squarrosa').sizes << @small
CurrentPlant.find_by_scientific_name('Grevillea robusta').sizes << @large
CurrentPlant.find_by_scientific_name('Angophora costata').sizes << @large
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').sizes << @small
CurrentPlant.find_by_scientific_name('Corymbia maculata').sizes << @small
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').sizes << @large
CurrentPlant.find_by_scientific_name('Thryptomene saxicola (incomplete)').sizes << @small
CurrentPlant.find_by_scientific_name('Coprosma repens').sizes << @large
CurrentPlant.find_by_scientific_name('Scaevola crassifolia').sizes << @large
CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala').sizes << @large
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').sizes << @large
CurrentPlant.find_by_scientific_name('Callistemon viminalis').sizes << @large
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').sizes << @small
CurrentPlant.find_by_scientific_name('Dietes grandiflora').sizes << @small
CurrentPlant.find_by_scientific_name('Bougainvillea glabra').sizes << @large
CurrentPlant.find_by_scientific_name('Astartea fascicularis').sizes << @small
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').sizes << @large
CurrentPlant.find_by_scientific_name('Grevillea \'Robyn Gordon\'').sizes << @medium
CurrentPlant.find_by_scientific_name('Grevillea olivacea [inc]').sizes << @large

puts('Done Sizes...')

CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Lophostemon confertus').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Raphiolepis indica').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').leaf_colours << @dark_green
CurrentPlant.find_by_scientific_name('Westringia fruiticosa').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').leaf_colours << @grey
CurrentPlant.find_by_scientific_name('Melaleuca incana').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Dichondra repens').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Banksia menziesii').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Melaleuca cuticularis').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Eremophila nivea').leaf_colours << @silver
CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Scaevola crassifolia').leaf_colours << @leaf_green
CurrentPlant.find_by_scientific_name('Adenanthos sericeus').leaf_colours << @silver
CurrentPlant.find_by_scientific_name('Guichenotia ledifolia').leaf_colours << @grey

puts('Done Leaf Colours...')

CurrentPlant.find_by_scientific_name('Boronia crenulata').climates << @cool
CurrentPlant.find_by_scientific_name('Acanthus mollis').climates << @cool
CurrentPlant.find_by_scientific_name('Robinia pseudoacacia').climates << @cool
CurrentPlant.find_by_scientific_name('Raphiolepis indica').climates << @cool
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').climates << @cool
CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)').climates << @cool
CurrentPlant.find_by_scientific_name('Correa reflexa').climates << @cool
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @cool
CurrentPlant.find_by_scientific_name('Acacia saligna').climates << @cool
CurrentPlant.find_by_scientific_name('Dryandra nivea').climates << @cool
CurrentPlant.find_by_scientific_name('Leucophyta brownii').climates << @cool
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @cool
CurrentPlant.find_by_scientific_name('Hedera helix').climates << @cool
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').climates << @cool
CurrentPlant.find_by_scientific_name('Conostylis candicans').climates << @cool
CurrentPlant.find_by_scientific_name('Hibbertia scandens').climates << @cool
CurrentPlant.find_by_scientific_name('Chorizema cordatum').climates << @cool
CurrentPlant.find_by_scientific_name('Cupressus sempervirens').climates << @cool
CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)').climates << @cool
CurrentPlant.find_by_scientific_name('Darwinia citriodora').climates << @cool
CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)').climates << @cool
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').climates << @cool
CurrentPlant.find_by_scientific_name('Clematis microphylla').climates << @cool
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @cool
CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon').climates << @cool
CurrentPlant.find_by_scientific_name('Boronia heterophylla').climates << @cool
CurrentPlant.find_by_scientific_name('Corymbia ficifolia').climates << @cool
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @cool
CurrentPlant.find_by_scientific_name('Melaleuca lanceolata').climates << @cool
CurrentPlant.find_by_scientific_name('Hakea petiolaris').climates << @cool
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @cool
CurrentPlant.find_by_scientific_name('Hemiandra pungens').climates << @cool
CurrentPlant.find_by_scientific_name('Lomandra longifolia').climates << @cool
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @cool
CurrentPlant.find_by_scientific_name('Eremophila glabra').climates << @cool
CurrentPlant.find_by_scientific_name('Parthenocissus quiniquefolia (incomplete)').climates << @cool
CurrentPlant.find_by_scientific_name('Callistemon viminalis').climates << @cool
CurrentPlant.find_by_scientific_name('Eucalyptus leucoxylon').climates << @cool
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @cool
CurrentPlant.find_by_scientific_name('Astartea fascicularis').climates << @cool
CurrentPlant.find_by_scientific_name('Cordyline indivisa').climates << @cool
CurrentPlant.find_by_scientific_name('Boronia crenulata').climates << @cold
CurrentPlant.find_by_scientific_name('Acanthus mollis').climates << @cold
CurrentPlant.find_by_scientific_name('Robinia pseudoacacia').climates << @cold
CurrentPlant.find_by_scientific_name('Raphiolepis indica').climates << @cold
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').climates << @cold
CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)').climates << @cold
CurrentPlant.find_by_scientific_name('Correa reflexa').climates << @cold
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @cold
CurrentPlant.find_by_scientific_name('Acacia saligna').climates << @cold
CurrentPlant.find_by_scientific_name('Dryandra nivea').climates << @cold
CurrentPlant.find_by_scientific_name('Leucophyta brownii').climates << @cold
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @cold
CurrentPlant.find_by_scientific_name('Hedera helix').climates << @cold
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').climates << @cold
CurrentPlant.find_by_scientific_name('Conostylis candicans').climates << @cold
CurrentPlant.find_by_scientific_name('Hibbertia scandens').climates << @cold
CurrentPlant.find_by_scientific_name('Chorizema cordatum').climates << @cold
CurrentPlant.find_by_scientific_name('Cupressus sempervirens').climates << @cold
CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)').climates << @cold
CurrentPlant.find_by_scientific_name('Darwinia citriodora').climates << @cold
CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)').climates << @cold
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').climates << @cold
CurrentPlant.find_by_scientific_name('Clematis microphylla').climates << @cold
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @cold
CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon').climates << @cold
CurrentPlant.find_by_scientific_name('Boronia heterophylla').climates << @cold
CurrentPlant.find_by_scientific_name('Corymbia ficifolia').climates << @cold
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @cold
CurrentPlant.find_by_scientific_name('Melaleuca lanceolata').climates << @cold
CurrentPlant.find_by_scientific_name('Hakea petiolaris').climates << @cold
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @cold
CurrentPlant.find_by_scientific_name('Hemiandra pungens').climates << @cold
CurrentPlant.find_by_scientific_name('Lomandra longifolia').climates << @cold
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @cold
CurrentPlant.find_by_scientific_name('Eremophila glabra').climates << @cold
CurrentPlant.find_by_scientific_name('Parthenocissus quiniquefolia (incomplete)').climates << @cold
CurrentPlant.find_by_scientific_name('Callistemon viminalis').climates << @cold
CurrentPlant.find_by_scientific_name('Eucalyptus leucoxylon').climates << @cold
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @cold
CurrentPlant.find_by_scientific_name('Astartea fascicularis').climates << @cold
CurrentPlant.find_by_scientific_name('Cordyline indivisa').climates << @cold
CurrentPlant.find_by_scientific_name('Juncus pallidus').climates << @cold
CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid').climates << @tropical
CurrentPlant.find_by_scientific_name('Asplenium australasicum').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Lophostemon confertus').climates << @tropical
CurrentPlant.find_by_scientific_name('Livistonia australis (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Correa reflexa').climates << @tropical
CurrentPlant.find_by_scientific_name('Acacia saligna').climates << @tropical
CurrentPlant.find_by_scientific_name('Leucophyta brownii').climates << @tropical
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @tropical
CurrentPlant.find_by_scientific_name('Brachychiton acerifolius').climates << @tropical
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Hibbertia scandens').climates << @tropical
CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Casuarina equisetifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Cyathea cooperi').climates << @tropical
CurrentPlant.find_by_scientific_name('Corymbia citriodora').climates << @tropical
CurrentPlant.find_by_scientific_name('Acmena smithii').climates << @tropical
CurrentPlant.find_by_scientific_name('Macadamia tetraphylla (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Ficus macrophylla').climates << @tropical
CurrentPlant.find_by_scientific_name('Hymenosporum flavum').climates << @tropical
CurrentPlant.find_by_scientific_name('Clematis microphylla').climates << @tropical
CurrentPlant.find_by_scientific_name('Murraya paniculata').climates << @tropical
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @tropical
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @tropical
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Delonix regia').climates << @tropical
CurrentPlant.find_by_scientific_name('Tipuana tipu').climates << @tropical
CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Syncarpia glomifera').climates << @tropical
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @tropical
CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @tropical
CurrentPlant.find_by_scientific_name('Grevillea robusta').climates << @tropical
CurrentPlant.find_by_scientific_name('Senna artemisioides').climates << @tropical
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @tropical
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @tropical
CurrentPlant.find_by_scientific_name('Lomandra longifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @tropical
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @tropical
CurrentPlant.find_by_scientific_name('Crinum pedunculatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Agonis linearifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Chamelaucium ciliatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Callistemon viminalis').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').climates << @tropical
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @tropical
CurrentPlant.find_by_scientific_name('Astartea fascicularis').climates << @tropical
CurrentPlant.find_by_scientific_name('Juncus pallidus').climates << @tropical
CurrentPlant.find_by_scientific_name('Grevillea pteridifolia hybrid').climates << @tropical
CurrentPlant.find_by_scientific_name('Asplenium australasicum').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Lophostemon confertus').climates << @tropical
CurrentPlant.find_by_scientific_name('Livistonia australis (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Correa reflexa').climates << @tropical
CurrentPlant.find_by_scientific_name('Acacia saligna').climates << @tropical
CurrentPlant.find_by_scientific_name('Leucophyta brownii').climates << @tropical
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @tropical
CurrentPlant.find_by_scientific_name('Brachychiton acerifolius').climates << @tropical
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Hibbertia scandens').climates << @tropical
CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Casuarina equisetifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Cyathea cooperi').climates << @tropical
CurrentPlant.find_by_scientific_name('Corymbia citriodora').climates << @tropical
CurrentPlant.find_by_scientific_name('Acmena smithii').climates << @tropical
CurrentPlant.find_by_scientific_name('Macadamia tetraphylla (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Ficus macrophylla').climates << @tropical
CurrentPlant.find_by_scientific_name('Hymenosporum flavum').climates << @tropical
CurrentPlant.find_by_scientific_name('Clematis microphylla').climates << @tropical
CurrentPlant.find_by_scientific_name('Murraya paniculata').climates << @tropical
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @tropical
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @tropical
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Delonix regia').climates << @tropical
CurrentPlant.find_by_scientific_name('Tipuana tipu').climates << @tropical
CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Syncarpia glomifera').climates << @tropical
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @tropical
CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @tropical
CurrentPlant.find_by_scientific_name('Grevillea robusta').climates << @tropical
CurrentPlant.find_by_scientific_name('Senna artemisioides').climates << @tropical
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @tropical
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @tropical
CurrentPlant.find_by_scientific_name('Lomandra longifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @tropical
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @tropical
CurrentPlant.find_by_scientific_name('Crinum pedunculatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Agonis linearifolia').climates << @tropical
CurrentPlant.find_by_scientific_name('Chamelaucium ciliatum').climates << @tropical
CurrentPlant.find_by_scientific_name('Callistemon viminalis').climates << @tropical
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').climates << @tropical
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @tropical
CurrentPlant.find_by_scientific_name('Astartea fascicularis').climates << @tropical
CurrentPlant.find_by_scientific_name('Juncus pallidus').climates << @tropical
CurrentPlant.find_by_scientific_name('Boronia crenulata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia ashbyi').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia baxteri (inc)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Asplenium australasicum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Macropidia fuliginosa (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Lechenaultia biloba').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia grandis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Pittosporum phylliraeoides (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Baeckea camphorosmae').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia attenuata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Calodendron capense').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Olearia axillaris').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Templetonia retusa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Correa reflexa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Conospermum stoechadis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Adenanthos cygnorum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia saligna').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dryandra nivea').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Myoporum parvifolium').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Leucophyta brownii').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hovea pungens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia lasiocarpa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Agonis flexuosa \'nana\'').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Melaleuca pentagona').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia iteaphylla').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus rudis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Anigozanthos viridus').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Conostylis candicans').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Melaleuca incana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hibbertia scandens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Chorizema cordatum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia ilicifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia hookeriana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus erythrocorys').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Cupressus sempervirens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus marginata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Baumea articulata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Kingia australis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Ficinia nodosa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Cyathea cooperi').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Darwinia citriodora').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Corymbia citriodora').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acmena smithii').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Corymbia calophylla').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia menziesii').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Ficus macrophylla').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia aneura').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hymenosporum flavum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Carpobrotus virescens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Clematis microphylla').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eremaea pauciflora').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dryandra sessilis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hakea laurina').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus sideroxylon').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia acuminata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Anigozanthos manglesii').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Boronia heterophylla').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia cyclops').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Corymbia ficifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Melaleuca lanceolata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Casuarina obesa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Melaleuca cuticularis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Beaufortia squarrosa').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia prionotes').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia coccinea').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hakea petiolaris').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eremophila nivea').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Senna artemisioides').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hemiandra pungens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Lomandra longifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia littoralis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Agonis linearifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hypocalymma robustum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eremophila glabra').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Scaevola crassifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Hovea elliptica').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus wandoo').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Chamelaucium ciliatum').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Callistemon viminalis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Brachychiton discolour').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia xanthina').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dietes grandiflora').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia victoriae').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Adenanthos sericeus').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus leucoxylon').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Astartea fascicularis').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Cordyline australis (inc)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia gardneri').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dietes bicolor').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Dietes iridioides').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia blechnifolia (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia petiolaris').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Guichenotia ledifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Acacia truncata (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus foecunda').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Eucalyptus tetragona (incomplete)').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea crithmifolia').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea nudiflora').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Grevillea olivacea [inc]').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Juncus pallidus').climates << @mediterranean
CurrentPlant.find_by_scientific_name('Banksia ashbyi').climates << @temperate
CurrentPlant.find_by_scientific_name('Baumea juncea').climates << @temperate
CurrentPlant.find_by_scientific_name('Begonia').climates << @temperate
CurrentPlant.find_by_scientific_name('Robinia pseudoacacia').climates << @temperate
CurrentPlant.find_by_scientific_name('Lechenaultia biloba').climates << @temperate
CurrentPlant.find_by_scientific_name('Ajuga reptans').climates << @temperate
CurrentPlant.find_by_scientific_name('Melaleuca huegelii').climates << @temperate
CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Olearia axillaris').climates << @temperate
CurrentPlant.find_by_scientific_name('Lepidosperma gladiatum').climates << @temperate
CurrentPlant.find_by_scientific_name('Erythrina indica').climates << @temperate
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @temperate
CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').climates << @temperate
CurrentPlant.find_by_scientific_name('Cynodon dactylon').climates << @temperate
CurrentPlant.find_by_scientific_name('Myoporum parvifolium').climates << @temperate
CurrentPlant.find_by_scientific_name('Ficus pumila').climates << @temperate
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @temperate
CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis').climates << @temperate
CurrentPlant.find_by_scientific_name('Hovea pungens').climates << @temperate
CurrentPlant.find_by_scientific_name('Coleonema pulchrum').climates << @temperate
CurrentPlant.find_by_scientific_name('Callistemon phoeniceus').climates << @temperate
CurrentPlant.find_by_scientific_name('Acacia iteaphylla').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus rudis').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Conostylis candicans').climates << @temperate
CurrentPlant.find_by_scientific_name('Melaleuca incana').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').climates << @temperate
CurrentPlant.find_by_scientific_name('Chorizema cordatum').climates << @temperate
CurrentPlant.find_by_scientific_name('Ficus microcarpa var. hillii (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Banksia ilicifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus erythrocorys').climates << @temperate
CurrentPlant.find_by_scientific_name('Jacaranda mimosifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus marginata').climates << @temperate
CurrentPlant.find_by_scientific_name('Dichondra repens').climates << @temperate
CurrentPlant.find_by_scientific_name('Darwinia citriodora').climates << @temperate
CurrentPlant.find_by_scientific_name('Corymbia citriodora').climates << @temperate
CurrentPlant.find_by_scientific_name('Acmena smithii').climates << @temperate
CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Plantanus x acerfolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Macadamia tetraphylla (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Convolvulus sabatius').climates << @temperate
CurrentPlant.find_by_scientific_name('Carpobrotus virescens').climates << @temperate
CurrentPlant.find_by_scientific_name('Araucaria heterophylla').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').climates << @temperate
CurrentPlant.find_by_scientific_name('Murraya paniculata').climates << @temperate
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @temperate
CurrentPlant.find_by_scientific_name('Aptenia cordifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Ficus rubiginosa').climates << @temperate
CurrentPlant.find_by_scientific_name('Acacia pulchella').climates << @temperate
CurrentPlant.find_by_scientific_name('Boronia heterophylla').climates << @temperate
CurrentPlant.find_by_scientific_name('Syncarpia glomifera').climates << @temperate
CurrentPlant.find_by_scientific_name('Casuarina cunninghamiana').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Casuarina obesa').climates << @temperate
CurrentPlant.find_by_scientific_name('Hakea petiolaris').climates << @temperate
CurrentPlant.find_by_scientific_name('Melaleuca nesophila').climates << @temperate
CurrentPlant.find_by_scientific_name('Eremophila nivea').climates << @temperate
CurrentPlant.find_by_scientific_name('Cymbopogon obtectus').climates << @temperate
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @temperate
CurrentPlant.find_by_scientific_name('Hemiandra pungens').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana').climates << @temperate
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @temperate
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').climates << @temperate
CurrentPlant.find_by_scientific_name('Agonis linearifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia').climates << @temperate
CurrentPlant.find_by_scientific_name('Hypocalymma robustum').climates << @temperate
CurrentPlant.find_by_scientific_name('Coprosma repens').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala').climates << @temperate
CurrentPlant.find_by_scientific_name('Eucalyptus wandoo').climates << @temperate
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').climates << @temperate
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').climates << @temperate
CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)').climates << @temperate
CurrentPlant.find_by_scientific_name('Melia azedarach var. australasica (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @temperate
CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').climates << @temperate
CurrentPlant.find_by_scientific_name('Banksia gardneri').climates << @temperate
CurrentPlant.find_by_scientific_name('Carpobrotus').climates << @temperate
CurrentPlant.find_by_scientific_name('Cycad thouarsi').climates << @temperate
CurrentPlant.find_by_scientific_name('Grevillea nudiflora').climates << @temperate
CurrentPlant.find_by_scientific_name('Leucospermum').climates << @temperate
CurrentPlant.find_by_scientific_name('Scaevola \'Purple Fanfare\' (incomplete)').climates << @subtropical
CurrentPlant.find_by_scientific_name('Macropidia fuliginosa (incomplete)').climates << @subtropical
CurrentPlant.find_by_scientific_name('Melaleuca quinquenervia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Ajuga reptans').climates << @subtropical
CurrentPlant.find_by_scientific_name('Baeckea camphorosmae').climates << @subtropical
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').climates << @subtropical
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @subtropical
CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis').climates << @subtropical
CurrentPlant.find_by_scientific_name('Acacia iteaphylla').climates << @subtropical
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Banksia ilicifolia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eucalyptus erythrocorys').climates << @subtropical
CurrentPlant.find_by_scientific_name('Darwinia citriodora').climates << @subtropical
CurrentPlant.find_by_scientific_name('Acmena smithii').climates << @subtropical
CurrentPlant.find_by_scientific_name('Liquidamber styraciflua (incomplete)').climates << @subtropical
CurrentPlant.find_by_scientific_name('Ginkgo biloba').climates << @subtropical
CurrentPlant.find_by_scientific_name('Convolvulus sabatius').climates << @subtropical
CurrentPlant.find_by_scientific_name('Carpobrotus virescens').climates << @subtropical
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').climates << @subtropical
CurrentPlant.find_by_scientific_name('Dryandra sessilis').climates << @subtropical
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @subtropical
CurrentPlant.find_by_scientific_name('Aptenia cordifolia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Delonix regia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Ficus rubiginosa').climates << @subtropical
CurrentPlant.find_by_scientific_name('Phoenix roebelenii').climates << @subtropical
CurrentPlant.find_by_scientific_name('Acacia acuminata').climates << @subtropical
CurrentPlant.find_by_scientific_name('Acacia cyclops').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eucalyptus camaldulensis').climates << @subtropical
CurrentPlant.find_by_scientific_name('Hakea petiolaris').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eremophila nivea').climates << @subtropical
CurrentPlant.find_by_scientific_name('Senna artemisioides').climates << @subtropical
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @subtropical
CurrentPlant.find_by_scientific_name('Hemiandra pungens').climates << @subtropical
CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana').climates << @subtropical
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @subtropical
CurrentPlant.find_by_scientific_name('Dianella revoluta').climates << @subtropical
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').climates << @subtropical
CurrentPlant.find_by_scientific_name('Agonis linearifolia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia').climates << @subtropical
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').climates << @subtropical
CurrentPlant.find_by_scientific_name('Melaleuca leucadendra').climates << @subtropical
CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)').climates << @subtropical
CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora').climates << @subtropical
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').climates << @subtropical
CurrentPlant.find_by_scientific_name('Leucospermum').climates << @subtropical
CurrentPlant.find_by_scientific_name('Andersonia gregoria').climates << @arid
CurrentPlant.find_by_scientific_name('Dampiera linearis').climates << @arid
CurrentPlant.find_by_scientific_name('Eucalyptus torquata').climates << @arid
CurrentPlant.find_by_scientific_name('Cynodon dactylon').climates << @arid
CurrentPlant.find_by_scientific_name('Ficus pumila').climates << @arid
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @arid
CurrentPlant.find_by_scientific_name('Coleonema pulchrum').climates << @arid
CurrentPlant.find_by_scientific_name('Eucalyptus rudis').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').climates << @arid
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').climates << @arid
CurrentPlant.find_by_scientific_name('Doryanthes excelsa(inc)').climates << @arid
CurrentPlant.find_by_scientific_name('Casuarina equisetifolia').climates << @arid
CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)').climates << @arid
CurrentPlant.find_by_scientific_name('Acacia aneura').climates << @arid
CurrentPlant.find_by_scientific_name('Pilots exaltatus').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').climates << @arid
CurrentPlant.find_by_scientific_name('Murraya paniculata').climates << @arid
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @arid
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @arid
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').climates << @arid
CurrentPlant.find_by_scientific_name('Anigozanthos manglesii').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia').climates << @arid
CurrentPlant.find_by_scientific_name('Eremophila nivea').climates << @arid
CurrentPlant.find_by_scientific_name('Cymbopogon obtectus').climates << @arid
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @arid
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @arid
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').climates << @arid
CurrentPlant.find_by_scientific_name('Hypocalymma robustum').climates << @arid
CurrentPlant.find_by_scientific_name('Coprosma repens').climates << @arid
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').climates << @arid
CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)').climates << @arid
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @arid
CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').climates << @arid
CurrentPlant.find_by_scientific_name('Grevillea nudiflora').climates << @arid
CurrentPlant.find_by_scientific_name('Cynodon dactylon').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Ficus pumila').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Brachyscome multifida').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Coleonema pulchrum').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Eucalyptus rudis').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea obtusifolia').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Eucalyptus caesia').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Doryanthes excelsa(inc)').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Casuarina equisetifolia').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Acacia aneura').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Pilots exaltatus').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea leucopteris [incomplete]').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Murraya paniculata').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Agonis flexuosa').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Carpobrotus glaucescens').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Podocarpus elatus (incomplete)').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Anigozanthos manglesii').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea rosmarinifolia').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Eremophila nivea').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Cymbopogon obtectus').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Angophora costata').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea thelemanniana').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Corymbia maculata').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Eucalyptus cladocalyx').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Hypocalymma robustum').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Coprosma repens').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Helichrysum ramosissimum (incomplete)').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Anigozanthos flavidus').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Brunfelsia pauciflora').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea \'Poorinda Royal Mantle\' (incomplete)').climates << @semi_arid
CurrentPlant.find_by_scientific_name('Grevillea nudiflora').climates << @semi_arid

puts('Done Climates...')
