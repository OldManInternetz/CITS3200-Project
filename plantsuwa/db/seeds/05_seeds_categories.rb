# Scanned the Bento data and made these up. Subject to change after input from Tinka.
# Take note of variable names @quin, etc...

puts('Creating Categorised Data...')
=begin
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

  @sml = Size.create(name: 'Small') 
  @med = Size.create(name: 'Medium') 
  @lar = Size.create(name: 'Large') 
  @les = Size.create(name: 'Less than 1m') 
  @bet = Size.create(name: 'Between 1m and 3m') 
  @grt = Size.create(name: 'Greater than 3m') 

  @wa = Origin.create(name: 'Western Australian')
  @aus = Origin.create(name: 'Australian')
  @exotic = Origin.create(name: 'Exotic')

  @red = FlowerColour.create(name: 'Red')
  @blue = FlowerColour.create(name: 'Blue')
  @green = FlowerColour.create(name: 'Green')
  @purple = FlowerColour.create(name: 'Purple')
  @yellow = FlowerColour.create(name: 'Yellow')
  @orange = FlowerColour.create(name: 'Orange')
  @pink = FlowerColour.create(name: 'Pink')
  @white = FlowerColour.create(name: 'White')

  @leaf_green = LeafColour.create(name: 'Green') 
  @dark_grey = LeafColour.create(name: 'Dark Green') 
  @grey_green = LeafColour.create(name: 'Grey-Green', alt_colour: '#486649') 
  @grey = LeafColour.create(name: 'Grey') 
  @silver = LeafColour.create(name: 'Silver')

  @cool = Climate.create(name: 'Cool')
  @cold = Climate.create(name: 'Cold')
  @tropical = Climate.create(name: 'Tropical')
  @warm = Climate.create(name: 'Warm')
  @med = Climate.create(name: 'Meditteranean')
  @temp = Climate.create(name: 'Temperate')
  @subt = Climate.create(name: 'Sub-Tropical')
  @semia = Climate.create(name: 'Semi-Arid')
  @arid = Climate.create(name: 'Arid')
  @hot = Climate.create(name: 'Hot')

  @climber = Type.create(name: 'Climber') 
  @conifer = Type.create(name: 'Conifer') 
  @grass = Type.create(name: 'Grass') 
  @fern = Type.create(name: 'Fern') 
  @herbaceous_shrub = Type.create(name: 'Herbaceous Shrub') 
  @palm = Type.create(name: 'Palm') 
  @sedge = Type.create(name: 'Sedge') 
  @succ = Type.create(name: 'Succulent') 
  @tree = Type.create(name: 'Tree') 
  @woodyshrub = Type.create(name: 'Woody Shrub')
=end
  
@wa = Origin.create(name: 'Western Australian')
@aus = Origin.create(name: 'Australian')
@exotic = Origin.create(name: 'Exotic')
  
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
