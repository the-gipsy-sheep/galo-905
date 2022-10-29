require "open-uri"
User.destroy_all

#  SEED DE USERS ----------------------------------------------------------------

puts "Creando usuarios..."

gonchi = User.new(
  email: "gonchi@gmail.com",
  password: "123456",
  first_name: "Gonchi",
  last_name: "Cobos Daract",
  user_name: "Gonco29",
  address: "Av. Hogwarts 78",
  birth_date: "1986/01/29"
)
photo_gonchi = URI.open("https://kitt.lewagon.com/placeholder/users/gonco29")

gonchi.photo.attach(io: photo_gonchi, filename: "fotogonchi.png", content_type: "image/png")

gonchi.save

pao = User.new(
  email: "pao@gmail.com",
  password: "123456",
  first_name: "Pao",
  last_name: "Pesce",
  user_name: "PaoPez",
  address: "Av. Invernalia 5125",
  birth_date: "1986/05/08"
)
photo_pao = URI.open("https://kitt.lewagon.com/placeholder/users/paopesce")

pao.photo.attach(io: photo_pao, filename: "fotopao.png", content_type: "image/png")

pao.save

juli = User.new(
  email: "juli@gmail.com",
  password: "123456",
  first_name: "Julian",
  last_name: "Chadwick",
  user_name: "jchad91",
  address: "Av. Gotica 91",
  birth_date: "1991/11/21"
)
photo_juli = URI.open("https://kitt.lewagon.com/placeholder/users/noster91")

juli.photo.attach(io: photo_juli, filename: "fotojuli.png", content_type: "image/png")

juli.save

demian = User.new(
  email: "demian@gmail.com",
  password: "123456",
  first_name: "Demian",
  last_name: "Yovanovich",
  user_name: "thegipsysheep",
  address: "Av. Godric 86",
  birth_date: "1986/07/28"
)
photo_demian = URI.open("https://kitt.lewagon.com/placeholder/users/the-gipsy-sheep")

demian.photo.attach(io: photo_demian, filename: "fotodemian.png", content_type: "image/png")

demian.save

puts "#{User.all.size} usuarios creados correctamente"
puts "Creando Listas..."

<<<<<<< HEAD

varios = List.create(title: "me lo merezco", description: "un poco de todo", privacy: "pública", user_id: pao.id)
gourmet = List.create(title: "gourmet", user_id: pao.id)
libros = List.create(title: "libros", privacy: "pública", user_id: demian.id)
tecnologia = List.create(title: "tecno", user_id: demian.id)
privada = List.create(title: "personal", description: "mis intereses privados", privacy: "privada", user_id: gonchi.id)
general = List.create(title: "general", description: "todas las cosas que quiero que me regalen", user_id: gonchi.id)
privada1 = List.create(title: "privada", privacy: "privada", user_id: juli.id)
favoritos = List.create(title: "favoritos", user_id: juli.id)

puts "8 listas creadas correctamente"
=======
#  SEED DE LISTS ----------------------------------------------------------------

varios_p = List.create(title: "me lo merezco",
                       description: "Mis regalos favoritos que me gustaria recibir, ideales para agazajarme",
                       privacy: "pública",
                       user_id: pao.id)
gourmet_p = List.create(title: "gourmet",
                        description: "Me encanta la comida de especialidad y cocinar con productos exoticos,\
                        aca algunos de los que me vendrian barbaro para seguir mejorando",
                        user_id: pao.id)
libros_d = List.create(title: "libros",
                       description: "Leer, leer, leer! Mis favoritos y algunos recomendados.",
                       privacy: "pública",
                       user_id: demian.id)
tecnologia_d = List.create(title: "tecno",
                           description: "Geek & Tecno ideas para mi cumpleaños",
                           user_id: demian.id)
privada_g = List.create(title: "personal",
                        description: "Mi lista auto-regalos personales",
                        privacy: "privada",
                        user_id: gonchi.id)
general_g = List.create(title: "general",
                        description: "Todas las cosas que quiero que me regalen, si dudas, esta acá",
                        user_id: gonchi.id)
privada_j = List.create(title: "privada",
                        description: "Mi lista privada",
                        privacy: "privada",
                        user_id: juli.id)
favoritos_j = List.create(title: "favoritos",
                          description: "Favoritos para todo el año",
                          user_id: juli.id)

puts "#{List.all.size} listas creadas correctamente"
>>>>>>> master
puts "Creando regalos..."

#  SEED DE GIFTS ----------------------------------------------------------------
# GIFTS DE JULI

gift_j1 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1100856715-oculus-quest-2-advanced-all-in-one-casco-vr-128gb-_JM#position=1&search_layout=stack&type=item&tracking_id=485662b9-19b3-43d2-8c93-f5c573ad0572",
  title: "Oculus Quest 2 Advanced",
  price: 199_890,
  ranking: rand(1..5),
  description: "Los nuevos lentes de facebook, increibles y tope de gama, para meterse en el futuro con todo",
  status: "disponible"
)

photo_gift_j1 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_714000-MLA45405695173_032021-F.webp")

gift_j1.photo.attach(io: photo_gift_j1, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j1.list_id = favoritos_j.id

gift_j1.save

gift_j2 = Gift.new(
  url: "https://www.stylestore.com.ar/reloj-tommy-hilfiger-1791713/p",
  title: "Reloj Tommy Special Edition",
  price: 100,
  ranking: rand(1..5),
  description: "La edicion especial del Tommy white, con un acabado de mucho estilo y especial para regalarmelo",
  status: "disponible"
)

photo_gift_j2 = URI.open("http://d3ugyf2ht6aenh.cloudfront.net/stores/001/308/085/products/reloj-tommy-hilfiger-dama-malla-tejida-pippa-th1781920-d_nq_np_834296-mla30834235412_052019-f1-9d8950c33232033e8115998597930936-640-0.jpg")

gift_j2.photo.attach(io: photo_gift_j2, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j2.list_id = privada_j.id

gift_j2.save

gift_j3 = Gift.new(
  url: "https://www.mercadolibre.com.ar/xiaomi-mi-smart-band-6-156-caja-de-plastico-pc-black-malla-black-de-tpu-y-aleacion-de-aluminio-xmsh15hm/p/MLA17796174#searchVariation=MLA17796174&position=4&search_layout=stack&type=product&tracking_id=a129a546-d9bc-454c-b719-130e1c2b0014",
  title: "Xiaomi Mi Smart Band",
  price: 300,
  ranking: rand(1..5),
  description: "Xiaomi se posiciona como uno de los líderes indiscutidos en el mercado de los smartwatches.",
  status: "disponible"
)

photo_gift_j3 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_917772-MLA46164931649_052021-F.webp")

gift_j3.photo.attach(io: photo_gift_j3, filename: "#{Time.now.to_i}image.png", content_type: "image/png")
gift_j3.list_id = privada_j.id

gift_j3.save

gift_j4 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1149699887-bicicleta-fire-bird-rodado-29-freno-a-disco-suspension-r29-_JM?searchVariation=174957774478&hide_psmb=true#searchVariation=174957774478&position=21&search_layout=grid&type=item&tracking_id=ffe5d948-077f-4e95-8b38-fc41e00c5e72&deal_print_id=91d04973-5c11-4569-956b-20d25ce60b6e&promotion_type=DEAL_OF_THE_DAY",
  title: "Bicicleta Fire Bird Rodado 29",
  price: 50_000,
  ranking: rand(1..5),
  description: "Las Bicicletas FIRE BIRD estan hechas para disfrutar al máximo y complacer a los amantes del ciclismo.",
  status: "disponible"
)

photo_gift_j4 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_866218-MLA51001739312_082022-F.webp")

gift_j4.photo.attach(io: photo_gift_j4, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j4.list_id = favoritos_j.id

gift_j4.save

gift_j5 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1124693568-maletin-portatil-set-de-herramientas-lusqtoff-245-pz-juego-_JM?hide_psmb=true#position=22&search_layout=grid&type=item&tracking_id=ffe5d948-077f-4e95-8b38-fc41e00c5e72&deal_print_id=91d04973-5c11-4569-956b-20d25ce60b6e&promotion_type=DEAL_OF_THE_DAY",
  title: "Maletín Portátil Set De Herramientas Lusqtoff",
  price: 47_000,
  ranking: rand(1..5),
  description: "Incluye:
  * Bandeja 1:
  -6 Destornilladores de precisión.
  -9 Llaves Allen.
  -24 Puntas.
  -Destornillador punta intercambiable.
  -Alargue para destornillador.
  -14 Destornilladores.
  -Destornillador Busca Polo.
  -Medidor de presión, tipo lápiz.",
  status: "disponible"
)

photo_gift_j5 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_670548-MLA49190245633_022022-F.webp")

gift_j5.photo.attach(io: photo_gift_j5, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j5.list_id = favoritos_j.id

gift_j5.save

gift_j6 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-872023673-cerveza-santa-fe-lata-473cc-x-24-u-_JM?hide_psmb=true#position=25&search_layout=grid&type=item&tracking_id=ffe5d948-077f-4e95-8b38-fc41e00c5e72&deal_print_id=91d04973-5c11-4569-956b-20d25ce60b6e&promotion_type=TODAY_PROMOTION",
  title: "Pack Cerveza Sta Fe",
  price: 2700,
  ranking: rand(1..5),
  description: "24 latas Santa Fe x 473cc.",
  status: "disponible"
)

photo_gift_j6 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_951434-MLA43057373268_082020-F.webp")

gift_j6.photo.attach(io: photo_gift_j6, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j6.list_id = favoritos_j.id

gift_j6.save

gift_j7 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1118531606-pistola-masajeadora-gadnic-rehabilitacion-lesiones-_JM?searchVariation=174072960479&hide_psmb=true#searchVariation=174072960479&position=26&search_layout=grid&type=item&tracking_id=ffe5d948-077f-4e95-8b38-fc41e00c5e72&deal_print_id=91d04973-5c11-4569-956b-20d25ce60b6e&promotion_type=TODAY_PROMOTION",
  title: "Pistola Masajeadora Gadnic Rehabilitacion",
  price: 24_549,
  ranking: rand(1..5),
  description: "Esta pistola cuenta con 6 velocidades ajustables para satisfacer las necesidades de relajación muscular\
  , 6 cabezales de masaje para diferentes partes del cuerpo, puede ajustar la intensidad de acuerdo con diferentes\
  partes del cuerpo ",
  status: "disponible"
)

photo_gift_j7 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_726257-MLA51933738986_102022-F.webp")

gift_j7.photo.attach(io: photo_gift_j7, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j7.list_id = favoritos_j.id

gift_j7.save

gift_j8 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1168792514-pack-de-100-sobres-mundial-qatar-2022-panini-_JM?searchVariation=175384952233&hide_psmb=true#searchVariation=175384952233&position=37&search_layout=grid&type=item&tracking_id=ffe5d948-077f-4e95-8b38-fc41e00c5e72&deal_print_id=91d04973-5c11-4569-956b-20d25ce60b6e&promotion_type=TODAY_PROMOTION",
  title: "Pack 100 sobres mundial",
  price: 24_549,
  ranking: rand(1..5),
  description: "100 sobres de 5 figus cada uno",
  status: "disponible"
)

photo_gift_j8 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_901387-MLA51545815109_092022-F.webp")

gift_j8.photo.attach(io: photo_gift_j8, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_j8.list_id = favoritos_j.id

gift_j8.save

# GIFTS DE GONCHI

gift_g1 = Gift.new(
  url: "https://articulo.mercadolibre.cl/MLC-599236900-libro-fisicopapel-mas-alla-del-mal-_JM#position=7&search_layout=stack&type=item&tracking_id=a8deb732-e13d-4824-9129-1d6f9f4c1259",
  title: "Libro Más Allá del Mal",
  price: 11_000,
  ranking: rand(1..5),
  description: "Esta novela posee los ingredientes del thriller político combinado con una ficción realista.\
  Dylan Flores, jefe del aeropuerto de Atacama, que lleva una vida normal de padre de familia.",
  status: "disponible"
)

photo_gift_g1 = URI.open("https://images.cdn3.buscalibre.com/fit-in/360x360/37/2b/372ba4dc2a150873d33e639f8d5eb532.jpg")

gift_g1.photo.attach(io: photo_gift_g1, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g1.list_id = general_g.id

gift_g1.save

gift_g2 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-689142313-abercrombie-fitch-hombre-perfume-100ml-perfumesfreeshop-_JM?searchVariation=174795299945#searchVariation=174795299945&position=11&search_layout=stack&type=item&tracking_id=1767e0cf-bfc3-4fbe-b5a5-354ff3bc7fc4",
  title: "Perfume super rico",
  price: 15_500,
  ranking: rand(1..5),
  description: "Las Notas de Salida son ginebra, agua tónica y melón; las Notas de Corazón son pimienta de Sichuan,\
  hojas de violeta y cítricos; las Notas de Fondo son gamuza, almizcle y ámbar",
  status: "disponible"
)

photo_gift_g2 = URI.open("https://m.media-amazon.com/images/I/412tMZCfs1L.jpg")

gift_g2.photo.attach(io: photo_gift_g2, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g2.list_id = privada_g.id

gift_g2.save

gift_g3 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-864452635-mochila-moto-con-2-compartimentos-resistente-a-la-lluvia-_JM?hide_psmb=true#position=41&search_layout=grid&type=item&tracking_id=e6a28553-39a6-4ff1-9300-51a873393b0d&deal_print_id=8ec98736-58a0-4145-ba0b-55d19206f9d0&promotion_type=DEAL_OF_THE_DAY",
  title: "Mochila Moto Con 2 Compartimentos",
  price: 8_900,
  ranking: rand(1..5),
  description: "Mochila con 2 compartimentos, tela de alto rendimiento, resistente a las lluvias, con detalles\
  reflectivos y sistema de tiras de hombro tipo paracaídas",
  status: "disponible"
)

photo_gift_g3 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_625425-MLA50293428166_062022-F.webp")

gift_g3.photo.attach(io: photo_gift_g3, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g3.list_id = general_g.id

gift_g3.save

gift_g4 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-822811590-ionizador-solar-pileta-gadnic-boya-anti-sarro-y-bacterias-_JM?searchVariation=58791726653&hide_psmb=true#searchVariation=58791726653&position=43&search_layout=grid&type=item&tracking_id=e6a28553-39a6-4ff1-9300-51a873393b0d&deal_print_id=8ec98736-58a0-4145-ba0b-55d19206f9d0&promotion_type=TODAY_PROMOTION",
  title: "Ionizador Solar Pileta Gadnic",
  price: 17_149,
  ranking: rand(1..5),
  description: "¡Descubrí el innovador Ionizador de Piscinas Gadnic!\
  Ésta boya utiliza tecnología solar y ionización para reducir el uso de cloro, productos químicos y eliminar la mayor\
  cantidad de algas y microorganismos de su pileta.",
  status: "disponible"
)

photo_gift_g4 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_872722-MLA52025064505_102022-F.webp")

gift_g4.photo.attach(io: photo_gift_g4, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g4.list_id = general_g.id

gift_g4.save

gift_g5 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1148616559-packs-x5-remeras-manga-corta-algodon-de-hombre-_JM?searchVariation=174901064490&hide_psmb=true#searchVariation=174901064490&position=48&search_layout=grid&type=item&tracking_id=e6a28553-39a6-4ff1-9300-51a873393b0d&deal_print_id=8ec98736-58a0-4145-ba0b-55d19206f9d0&promotion_type=TODAY_PROMOTION",
  title: "Packs X5 Remeras Manga Corta Algodon De Hombre",
  price: 6_983,
  ranking: rand(1..5),
  description: "PACK X5 Remeras de ALGODÓN PEINADO de hombre
  Varios colores",
  status: "disponible"
)

photo_gift_g5 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_970447-MLA50896690811_072022-F.webp")

gift_g5.photo.attach(io: photo_gift_g5, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g5.list_id = general_g.id

gift_g5.save

gift_g6 = Gift.new(
  url: "https://www.mercadolibre.com.ar/notebook-gadnic-lumina-pro-intel-dual-core-4gb-64gb-ssd-156-windows-10/p/MLA18948614?pdp_filters=deal:MLA779357-1&hide_psmb=true#searchVariation=MLA18948614&position=25&search_layout=grid&type=product&tracking_id=e6a28553-39a6-4ff1-9300-51a873393b0d&deal_print_id=8ec98736-58a0-4145-ba0b-55d19206f9d0&promotion_type=TODAY_PROMOTION",
  title: "Notebook Gadnic Lumina Pro Intel Dual Core",
  price: 70_599,
  ranking: rand(1..5),
  description: "¡Descubrí esta alternativa a la Notebook tradicional! La cloudbook Gadnic NOT000A4 con Procesador Intel\
  CELERON N3350 Dual Core, Memoria Ram de 4 GB, Capacidad 64GB es ideal para realizar tus tareas de todos los días.",
  status: "disponible"
)

photo_gift_g6 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_867794-MLA48708194359_122021-F.webp")

gift_g6.photo.attach(io: photo_gift_g6, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g6.list_id = general_g.id

gift_g6.save

gift_g7 = Gift.new(
  url: "https://www.mercadolibre.com.ar/silla-de-comedor-garden-life-allegra-estructura-color-blanco-4-unidades/p/MLA18778373?pdp_filters=deal:MLA779357-1&hide_psmb=true#searchVariation=MLA18778373&position=26&search_layout=grid&type=product&tracking_id=e6a28553-39a6-4ff1-9300-51a873393b0d&deal_print_id=8ec98736-58a0-4145-ba0b-55d19206f9d0&promotion_type=TODAY_PROMOTION",
  title: "Silla de comedor Garden Life Allegra",
  price: 31_498,
  ranking: rand(1..5),
  description: "Comodidad, durabilidad y estética son algunos de los pilares con los que basamos las compras de\
  nuestras sillas para el comedor.",
  status: "disponible"
)

photo_gift_g7 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_886430-MLA50621574385_072022-F.webp")

gift_g7.photo.attach(io: photo_gift_g7, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g7.list_id = general_g.id

gift_g7.save

gift_g8 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1124196665-juego-toalla-y-toallon-espalma-100-algodon-egipcio-550-gr-_JM?searchVariation=174524638692&hide_psmb=true#searchVariation=174524638692&position=11&search_layout=grid&type=item&tracking_id=12625215-7999-4aef-9a86-fbf546152610&deal_print_id=f036f945-b4cd-4412-b6b2-579fb513e6a4&promotion_type=TODAY_PROMOTION",
  title: "Juego Toalla Y Toallón Algodón Egipcio",
  price: 13_300,
  ranking: rand(1..5),
  description: "Hechas en puro algodón de fibra larga. Cada producto recibe un tratamiento especial de pre-lavado y\
  pre-encogido, lo que aumenta la resistencia, la suavidad y la absorción.",
  status: "disponible"
)

photo_gift_g8 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_864538-MLA51490292610_092022-F.webp")

gift_g8.photo.attach(io: photo_gift_g8, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_g8.list_id = general_g.id

gift_g8.save

# GIFTS PAO

gift_p1 = Gift.new(
  url: "https://robbreport.mx/food/todavia-no-se-estrena-pero-house-of-dragon-ya-tiene-su-propia-linea-de-vinos/",
  title: "Vinos House Of The Dragon",
  price: 10_000,
  ranking: rand(1..5),
  description: "Vinos House Of The Dragon",
  status: "disponible"
)

photo_gift_p1 = URI.open("https://i0.wp.com/robbreport.mx/wp-content/uploads/2022/07/house-of-dragon-2-1.png?resize=290%2C1024&ssl=1")

gift_p1.photo.attach(io: photo_gift_p1, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p1.list_id = gourmet_p.id

gift_p1.save

gift_p2 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1143535476-varitas-deluxe-lumos-de-harry-potter-deluxe-hermoine-_JM?matt_tool=26838570&matt_word=&matt_source=google&matt_campaign_id=14240640202&matt_ad_group_id=125225556669&matt_match_type=&matt_network=g&matt_device=c&matt_creative=538502784369&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=226799326&matt_product_id=MLA1143535476&matt_product_partition_id=1397045070422&matt_target_id=pla-1397045070422&gclid=CjwKCAjw7p6aBhBiEiwA83fGulO97SOlXnv020tNSKRfmj3DEVCpuwSQVNMXZDMEqNDa3lMlkwtLzhoCB5EQAvD_BwE",
  title: "Varita de Sauco - Harry Potter",
  price: 15_000,
  ranking: rand(1..5),
  description: "Varita de Sauco",
  status: "disponible"
)

photo_gift_p2 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_914936-MLA48075978958_102021-F.webp")

gift_p2.photo.attach(io: photo_gift_p2, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p2.list_id = varios_p.id

gift_p2.save

gift_p3 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-875253871-siete-fuegos-mi-cocina-argentina-francis-mallmann-_JM#position=1&search_layout=stack&type=pad&tracking_id=279f5eca-e726-4b12-9ce6-012b6a73324b&is_advertising=true&ad_domain=VQCATCORE_LST&ad_position=1&ad_click_id=MmQ4NDE2NTgtMTA5Ni00NTBjLWEwODgtZTdjMmE2NjIwZjI0",
  title: "Siete Fuegos - Francis Mallmann",
  price: 11_399,
  ranking: rand(1..5),
  description: "El chef más genial de Argentina comparte la esencia de su cocina de fuegos. Con pasión y autenticidad,\
  despliega las recetas y las historias que recorren su larga trayectoria como cocinero",
  status: "disponible"
)

photo_gift_p3 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_652326-MLA43778635941_102020-F.webp")

gift_p3.photo.attach(io: photo_gift_p3, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p3.list_id = gourmet_p.id

gift_p3.save

gift_p4 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1119929752-pepinillos-en-vinagre-gullo-gourmet-frasco-de-330-gr-pack-x3-_JM#position=25&search_layout=stack&type=item&tracking_id=49ff2d86-3ab7-4fbc-9246-ca60b57d59e4",
  title: "Pepinillos En Vinagre Gullo Gourmet Frasco",
  price: 2_322,
  ranking: rand(1..5),
  description: "Son ricos en antioxidantes. Ayudan a evitar que se acumule la grasa y activan el metabolismo.",
  status: "disponible"
)

photo_gift_p4 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_764509-MLA48873899147_012022-F.webp")

gift_p4.photo.attach(io: photo_gift_p4, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p4.list_id = gourmet_p.id

gift_p4.save

gift_p5 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-809552605-sweet-chili-pampa-gourmet-320-g-_JM#position=7&search_layout=stack&type=item&tracking_id=49ff2d86-3ab7-4fbc-9246-ca60b57d59e4",
  title: "Sweet Chili - Pampa Gourmet",
  price: 912,
  ranking: rand(1..5),
  description: "Salsa a base de Morrón rojo, Azúcar y Ají Molido.",
  status: "disponible"
)

photo_gift_p5 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_818516-MLA31421200725_072019-F.webp")

gift_p5.photo.attach(io: photo_gift_p5, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p5.list_id = gourmet_p.id

gift_p5.save

gift_p6 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-913875687-buzo-canguro-hoodie-capucha-hombre-mujer-negro-algodon-_JM?searchVariation=80029896282#searchVariation=80029896282&position=8&search_layout=stack&type=item&tracking_id=af5a73e6-62fc-471b-9ec8-b9883ffe68d6",
  title: "Buzo Canguro Hoodie Capucha",
  price: 5_000,
  ranking: rand(1..5),
  description: "Hombre Mujer Negro Algodón",
  status: "disponible"
)

photo_gift_p6 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_639893-MLA45364824230_032021-F.webp")

gift_p6.photo.attach(io: photo_gift_p6, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p6.list_id = varios_p.id

gift_p6.save

gift_p7 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-834500473-cajita-de-musica-harry-potter-caja-musical-con-snitch-dorada-_JM?searchVariation=49200249123#searchVariation=49200249123&position=11&search_layout=stack&type=item&tracking_id=af5a73e6-62fc-471b-9ec8-b9883ffe68d6",
  title: "Caja Musical Con Snitch Dorada",
  price: 3_400,
  ranking: rand(1..5),
  description: "Cajita de música con mecanismo a manivela. Medidas: 6,5cm x 5cm x4cm
  Es manual, la melodía suena mientras vas girando la manivela.",
  status: "disponible"
)

photo_gift_p7 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_913068-MLA47463361860_092021-F.webp")

gift_p7.photo.attach(io: photo_gift_p7, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p7.list_id = varios_p.id

gift_p7.save

gift_p8 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-675263715-funda-mac-hardcase-macbook-air-13-protector-fullbody-usa-_JM?searchVariation=56665462860#searchVariation=56665462860&position=24&search_layout=stack&type=item&tracking_id=af5a73e6-62fc-471b-9ec8-b9883ffe68d6",
  title: "Funda Mac Hardcase Macbook Air 13",
  price: 3_990,
  ranking: rand(1..5),
  description: "Funda Mac Hardcase Macbook Air 13 Protector Fullbody Usa",
  status: "disponible"
)

photo_gift_p8 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_979213-MLA41937827467_052020-F.webp")

gift_p8.photo.attach(io: photo_gift_p8, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_p8.list_id = varios_p.id

gift_p8.save

# GIFTS DEMIAN

gift_d1 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-742167450-saga-completa-harry-potter-7-libros-j-k-rowling-_JM#position=1&search_layout=stack&type=item&tracking_id=16980b95-9a70-47fa-a3fd-cd529dbe7f6e",
  title: "Coleccion de libros Harry Potter",
  price: 30_698,
  ranking: rand(1..5),
  description: "Coleccion completa de libros de Harry Potter edicion especial en caja decorada",
  status: "disponible"
)

photo_gift_d1 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_808316-MLA45678119209_042021-F.webp")

gift_d1.photo.attach(io: photo_gift_d1, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d1.list_id = libros_d.id

gift_d1.save

gift_d3 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-855311425-el-problema-de-los-tres-cuerpos-_JM#position=1&search_layout=stack&type=item&tracking_id=550d78ee-b8e9-4ccd-ab9d-e602afb3c77c",
  title: "El problema de los Tres Cuerpos",
  price: 7_500,
  ranking: rand(1..5),
  description: "El primer libro de la ''Trilogía de los Tres Cuerpos'', el fenómeno editorial chino que ha conquistado\
  al mundo y ha ganado el premio Hugo 2015 a la mejor novela.",
  status: "disponible"
)

photo_gift_d3 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_811029-MLA51060923658_082022-F.webp")

gift_d3.photo.attach(io: photo_gift_d3, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d3.list_id = libros_d.id

gift_d3.save

gift_d4 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1180895345-cuento-de-hadas-king-stephen-_JM#position=3&search_layout=stack&type=item&tracking_id=a96cd355-31d8-4beb-ba06-5db4d371a833",
  title: "Cuento De Hadas - King, Stephen",
  price: 8_540,
  ranking: rand(1..5),
  description: "Stephen King",
  status: "disponible"
)

photo_gift_d4 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_759671-MLA51759662119_092022-F.webp")

gift_d4.photo.attach(io: photo_gift_d4, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d4.list_id = libros_d.id

gift_d4.save

gift_d5 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-769980211-africanus-el-hijo-del-consul-libro-1-_JM#position=1&search_layout=stack&type=item&tracking_id=d87f7e5a-692a-46ad-b6ed-dc024412170b",
  title: "Africanus: El Hijo Del Consul - Libro 1",
  price: 5_349,
  ranking: rand(1..5),
  description: "La gran Trilogía de Roma. Ahora en formato bolsillo con tapa dura y sobrecubierta.",
  status: "disponible"
)

photo_gift_d5 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_600350-MLA29353074385_022019-F.webp")

gift_d5.photo.attach(io: photo_gift_d5, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d5.list_id = libros_d.id

gift_d5.save

gift_d2 = Gift.new(
  url: "https://www.mercadolibre.com.ar/sony-playstation-5-825gb-standard-color-blanco-y-negro/p/MLA16171888?matt_tool=80203390&matt_word=&matt_source=google&matt_campaign_id=14545592783&matt_ad_group_id=139714998371&matt_match_type=&matt_network=g&matt_device=c&matt_creative=585541187518&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=231286750&matt_product_id=MLA16171888-product&matt_product_partition_id=1636168139449&matt_target_id=aud-890611733488:pla-1636168139449&gclid=CjwKCAjw7p6aBhBiEiwA83fGulSxBVozGvQA4CX7wtPuDlGAZM73aRcHZg6A-lyFvwdCR3E2vNXGyBoCd1kQAvD_BwE",
  title: "Playstation 5",
  price: 319_980,
  ranking: rand(1..5),
  description: "Playstation 5 con control incluido",
  status: "disponible"
)

photo_gift_d2 = URI.open("https://ockam-cloud-thebest.imgix.net/imagenes-s/productos/ps5-playstation-5-edicion-estandar-80417.jpg?auto=format")

gift_d2.photo.attach(io: photo_gift_d2, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d2.list_id = tecnologia_d.id

gift_d2.save

gift_d6 = Gift.new(
  url: "https://www.mercadolibre.com.ar/disco-solido-interno-pny-ssd7cs900-240-rb-240gb-negro/p/MLA10072786#searchVariation=MLA10072786&position=8&search_layout=stack&type=product&tracking_id=90ac3e78-dfbb-4f1a-9782-031e4f111fce",
  title: "Disco sólido interno 240GB",
  price: 4_957,
  ranking: rand(1..5),
  description: "Con la unidad en estado sólido PNY vas a incrementar la capacidad de respuesta de tu equipo.",
  status: "disponible"
)

photo_gift_d6 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_816376-MLA41242140179_032020-F.webp")

gift_d6.photo.attach(io: photo_gift_d6, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d6.list_id = tecnologia_d.id

gift_d6.save

gift_d7 = Gift.new(
  url: "https://www.mercadolibre.com.ar/drone-gadnic-tecnologia-xp7-drgad005-con-camara-fullhd-negro-24ghz-2-baterias/p/MLA18593160#searchVariation=MLA18593160&position=3&search_layout=stack&type=product&tracking_id=90ac3e78-dfbb-4f1a-9782-031e4f111fce",
  title: "Drone Gadnic Tecnología XP7",
  price: 23_799,
  ranking: rand(1..5),
  description: "Cruzar las fronteras físicas y llegar a espacios difíciles será posible con el drone Gadnic XP7.",
  status: "disponible"
)

photo_gift_d7 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_603768-MLA48633244472_122021-F.webp")

gift_d7.photo.attach(io: photo_gift_d7, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d7.list_id = tecnologia_d.id

gift_d7.save

gift_d8 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1163102095-cargador-wireless-inalambrico-qi-carga-rapida-tipo-pie-_JM?searchVariation=175180947230#searchVariation=175180947230&position=13&search_layout=stack&type=item&tracking_id=90ac3e78-dfbb-4f1a-9782-031e4f111fce",
  title: "Cargador Wireless Inalambrico",
  price: 6_194,
  ranking: rand(1..5),
  description: "CARGA MÁS RÁPIDA: el cargador de teléfono inalámbrico certificado Qi con salida de 10 W carga su\
  teléfono, cargándolo MÁS RÁPIDO que los cargadores inalámbricos normales de 3.5-5W.",
  status: "disponible"
)

photo_gift_d8 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_921548-MLA32005891836_082019-F.webp")

gift_d8.photo.attach(io: photo_gift_d8, filename: "#{Time.now.to_i}image.png.png", content_type: "image/png")
gift_d8.list_id = tecnologia_d.id

gift_d8.save

puts "#{Gift.all.size} regalos creados correctamente"
puts "añadiendo comentarios..."

#  SEED DE COMMENTS ----------------------------------------------------------------
Comment.create(content: "yo también lo quiero, re fan de harry", user_id: gonchi.id, gift_id: gift_d1.id)
Comment.create(content: "invitame y lo tomamos juntos viendo la serie", user_id: juli.id, gift_id: gift_p1.id)
Comment.create(content: "están buenisimos, yo los tengo y no me arrepiento", user_id: pao.id, gift_id: gift_j1.id)

puts "#{Comment.all.size} comentarios creados correctamente"
puts "Seed Lista! #{Gift.all.size} Regalos, #{List.all.size} Listas,\
#{Comment.all.size} Comentarios, #{User.all.size} Usuarios"
