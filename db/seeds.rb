require "open-uri"

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

puts "4 usuarios creados correctamente"
puts "Creando Listas..."

varios = List.create(title: "me lo merezco", description: "un poco de todo", privacy: "pública", user_id: pao.id)
gourmet = List.create(title: "gourmet", user_id: pao.id)
libros = List.create(title: "libros", privacy: "pública", user_id: demian.id)
tecnologia = List.create(title: "tecno", user_id: demian.id)
privada = List.create(title: "personal", description: "mis intereses privados", privacy: "privado", user_id: gonchi.id)
general = List.create(title: "general", description: "todas las cosas que quiero que me regalen", user_id: gonchi.id)
privada1 = List.create(title: "privada", privacy: "privado", user_id: juli.id)
favoritos = List.create(title: "favoritos", user_id: juli.id)

puts "8 listas creadas correctamente"
puts "Creando regalos..."

gift1 = Gift.new(
  url: "https://www.theverge.com/23393115/meta-quest-pro-vr-headset-hands-on-specs-price",
  title: "Oculus Rift Pro Quest",
  price: 1500,
  ranking: 5,
  description: "Los nuevos lentes de facebook, increibles y tope de gama, para meterse en el futuro con todo",
  status: "disponible"
)

photo_gift1 = URI.open("https://cdn.vox-cdn.com/thumbor/WuID7bBsf6wM0NZWAEbp_vN_awM=/0x0:2040x1360/1400x1050/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24088515/226334_Oculus_MetaQuest_Pro_AHeath_0003.jpg")

gift1.photo.attach(io: photo_gift1, filename: "regalo1.png", content_type: "image/png")
gift1.list_id = favoritos.id

gift1.save

gift2 = Gift.new(
  url: "https://www.stylestore.com.ar/reloj-tommy-hilfiger-1791713/p",
  title: "Reloj Tommy Special Edition",
  price: 100,
  ranking: 3.5,
  description: "La edicion especial del Tommy white, con un acabado de mucho estilo y especial para regalarmelo",
  status: "disponible"
)

photo_gift2 = URI.open("http://d3ugyf2ht6aenh.cloudfront.net/stores/001/308/085/products/reloj-tommy-hilfiger-dama-malla-tejida-pippa-th1781920-d_nq_np_834296-mla30834235412_052019-f1-9d8950c33232033e8115998597930936-640-0.jpg")

gift2.photo.attach(io: photo_gift2, filename: "regalo2.png", content_type: "image/png")
gift2.list_id = privada1.id

gift2.save

gift3 = Gift.new(
  url: "https://articulo.mercadolibre.cl/MLC-599236900-libro-fisicopapel-mas-alla-del-mal-_JM#position=7&search_layout=stack&type=item&tracking_id=a8deb732-e13d-4824-9129-1d6f9f4c1259",
  title: "Libro Más Allá del Mal",
  price: 11_000,
  ranking: 4,
  description: "Esta novela posee los ingredientes del thriller político combinado con una ficción realista. Dylan Flores, jefe del aeropuerto de Atacama, que lleva una vida normal de padre de familia, se verá súbitamente involucrado en un hecho que transformará su vida de la noche a la mañana.",
  status: "disponible"
)

photo_gift3 = URI.open("https://images.cdn3.buscalibre.com/fit-in/360x360/37/2b/372ba4dc2a150873d33e639f8d5eb532.jpg")

gift3.photo.attach(io: photo_gift3, filename: "regalo3.png", content_type: "image/png")
gift3.list_id = general.id

gift3.save

gift4 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-689142313-abercrombie-fitch-hombre-perfume-100ml-perfumesfreeshop-_JM?searchVariation=174795299945#searchVariation=174795299945&position=11&search_layout=stack&type=item&tracking_id=1767e0cf-bfc3-4fbe-b5a5-354ff3bc7fc4",
  title: "Perfume super rico",
  price: 15_500,
  ranking: 5,
  description: "Las Notas de Salida son ginebra, agua tónica y melón; las Notas de Corazón son pimienta de Sichuan, hojas de violeta y cítricos; las Notas de Fondo son gamuza, almizcle y ámbar",
  status: "disponible"
)

photo_gift4 = URI.open("https://m.media-amazon.com/images/I/412tMZCfs1L.jpg")

gift4.photo.attach(io: photo_gift4, filename: "regalo4.png", content_type: "image/png")
gift4.list_id = privada.id

gift4.save

gift5 = Gift.new(
  url: "https://robbreport.mx/food/todavia-no-se-estrena-pero-house-of-dragon-ya-tiene-su-propia-linea-de-vinos/",
  title: "Vinos House Of The Dragon",
  price: 10_000,
  ranking: 4.8,
  description: "Vinos House Of The Dragon",
  status: "disponible"
)

photo_gift5 = URI.open("https://i0.wp.com/robbreport.mx/wp-content/uploads/2022/07/house-of-dragon.jpg?w=1260&ssl=1
  ")

gift5.photo.attach(io: photo_gift5, filename: "regalo5.png", content_type: "image/png")
gift5.list_id = gourmet.id

gift5.save

gift6 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-1143535476-varitas-deluxe-lumos-de-harry-potter-deluxe-hermoine-_JM?matt_tool=26838570&matt_word=&matt_source=google&matt_campaign_id=14240640202&matt_ad_group_id=125225556669&matt_match_type=&matt_network=g&matt_device=c&matt_creative=538502784369&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=226799326&matt_product_id=MLA1143535476&matt_product_partition_id=1397045070422&matt_target_id=pla-1397045070422&gclid=CjwKCAjw7p6aBhBiEiwA83fGulO97SOlXnv020tNSKRfmj3DEVCpuwSQVNMXZDMEqNDa3lMlkwtLzhoCB5EQAvD_BwE",
  title: "Varita de Sauco - Harry Potter",
  price: 15_000,
  ranking: 4.9,
  description: "Varita de Sauco",
  status: "disponible"
)

photo_gift6 = URI.open("https://http2.mlstatic.com/D_NQ_NP_2X_776323-MLA50408592932_062022-F.webp")

gift6.photo.attach(io: photo_gift6, filename: "regalo6.png", content_type: "image/png")
gift6.list_id = varios.id

gift6.save

gift7 = Gift.new(
  url: "https://articulo.mercadolibre.com.ar/MLA-742167450-saga-completa-harry-potter-7-libros-j-k-rowling-_JM#position=1&search_layout=stack&type=item&tracking_id=16980b95-9a70-47fa-a3fd-cd529dbe7f6e",
  title: "Coleccion de libros Harry Potter",
  price: 30_698,
  ranking: 5,
  description: "Coleccion completa de libros de Harry Potter edicion especial en caja decorada",
  status: "disponible"
)

photo_gift7 = URI.open("https://www.tematika.com/media/wysiwyg/Colecciones/2020/harry2020.jpg")

gift7.photo.attach(io: photo_gift7, filename: "regalo7.png", content_type: "image/png")
gift7.list_id = libros.id

gift7.save

gift8 = Gift.new(
  url: "https://www.mercadolibre.com.ar/sony-playstation-5-825gb-standard-color-blanco-y-negro/p/MLA16171888?matt_tool=80203390&matt_word=&matt_source=google&matt_campaign_id=14545592783&matt_ad_group_id=139714998371&matt_match_type=&matt_network=g&matt_device=c&matt_creative=585541187518&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=231286750&matt_product_id=MLA16171888-product&matt_product_partition_id=1636168139449&matt_target_id=aud-890611733488:pla-1636168139449&gclid=CjwKCAjw7p6aBhBiEiwA83fGulSxBVozGvQA4CX7wtPuDlGAZM73aRcHZg6A-lyFvwdCR3E2vNXGyBoCd1kQAvD_BwE",
  title: "Playstation 5",
  price: 319_980,
  ranking: 4,
  description: "Playstation 5 con control incluido",
  status: "disponible"
)

photo_gift8 = URI.open("https://ockam-cloud-thebest.imgix.net/imagenes-s/productos/ps5-playstation-5-edicion-estandar-80417.jpg?auto=format")

gift8.photo.attach(io: photo_gift8, filename: "regalo8.png", content_type: "image/png")
gift8.list_id = tecnologia.id

gift8.save

puts "8 regalos creados correctamente"
puts "añadiendo comentarios..."

Comment.create(content: "yo también lo quiero, re fan de harry", user_id: gonchi.id, gift_id: gift6.id)
Comment.create(content: "invitame y lo tomamos juntos viendo la serie", user_id: juli.id, gift_id: gift5.id)
Comment.create(content: "están buenisimos, yo los tengo y no me arrepiento", user_id: pao.id, gift_id: gift7.id)

puts "Todo listo!"
