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

@quin.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Leucophyta brownii')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Hibbertia cuneiformis')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Dichondra repens')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Carpobrotus virescens')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Agonis flexuosa')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Acacia cyclops')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Callitris preissii')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca lanceolata')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Grevillea crithmifolia')
@quin.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')


@cott.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Leucophyta brownii')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Chamelaucium uncinatum')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus marginata')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Dichondra repens')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Carpobrotus virescens')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Agonis flexuosa')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Acacia cyclops')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Callitris preissii')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca cuticularis')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Acacia xanthina')
@cott.current_plants << CurrentPlant.find_by_scientific_name('Grevillea crithmifolia')

@karr.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Hedera helix')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus marginata')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Acacia cyclops')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Banksia prionotes')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Guichenotia ledifolia')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Grevillea crithmifolia')
@karr.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@guil.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Casuarina obesa')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca cuticularis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Beaufortia squarrosa')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Grevillea thelemanniana')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Agonis linearifolia')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus wandoo')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@guil.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@bass.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus marginata')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Agonis linearifolia')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@bass.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@beer.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Casuarina obesa')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Beaufortia squarrosa')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@beer.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@forr.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Chorizema cordatum')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Hardenbergia comptoniana')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@forr.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@herd.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Banksia ilicifolia')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Acacia cyclops')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Banksia littoralis')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus gomphocephala')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')
@herd.current_plants << CurrentPlant.find_by_scientific_name('Juncus pallidus')

@dard.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@dard.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@gran.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Darwinia citriodora')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Hakea petiolaris')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus wandoo')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@gran.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@late.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@late.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@late.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@late.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@late.current_plants << CurrentPlant.find_by_scientific_name('Banksia grandis')
@late.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@late.current_plants << CurrentPlant.find_by_scientific_name('Banksia attenuata')
@late.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@late.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@late.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@late.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@late.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@late.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@late.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@late.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@late.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@late.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@late.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@late.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@late.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@late.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@late.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@late.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@late.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@late.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@late.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@late.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@late.current_plants << CurrentPlant.find_by_scientific_name('Hibbertia huegelii')
@late.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@scar.current_plants << CurrentPlant.find_by_scientific_name('Boronia crenulata')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Baeckea camphorosmae')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Allocasuarina fraseriana')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Conospermum stoechadis')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Hovea pungens')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Callistemon phoeniceus')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Conostylis candicans')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Chorizema cordatum')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Parthenocissus tricuspidata (incomplete)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Darwinia citriodora')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Calothamnus quadrifidus')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Eremaea pauciflora')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Dryandra sessilis')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Hakea petiolaris')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Hemiandra pungens')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Dianella revoluta')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Agonis linearifolia')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus wandoo')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@scar.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@yang.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Dampiera linearis')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Adenanthos cygnorum')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Dryandra nivea')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Eucalyptus rudis')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Corymbia calophylla')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Banksia menziesii')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Brachyscome iberidifolia')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Eremophila glabra')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Astartea fascicularis')
@yang.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')

@serp.current_plants << CurrentPlant.find_by_scientific_name('Robinia pseudoacacia')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Lechenaultia biloba')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca viridiflora (incomplete)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Raphiolepis indica')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus oxycarpa cv \'Raywood\' (Incomplete)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Fraxinus excelsior (Incomplete)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Acacia saligna')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Acacia lasiocarpa')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Melaleuca pentagona')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Ficinia nodosa')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Murraya paniculata')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Pittosporum rhombifolium (incomplete)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Juncus karusii (incomplete)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Grevillea preisii \'Grevillea thelemanniana')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Hypocalymma robustum')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Ricinocarpus tuberculatus x cyanescens')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Baeckea virgata (inc)')
@serp.current_plants << CurrentPlant.find_by_scientific_name('Grevillea nudiflora')
