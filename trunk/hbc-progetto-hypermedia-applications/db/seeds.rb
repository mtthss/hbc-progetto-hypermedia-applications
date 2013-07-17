# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#PRODUCTS
Product.delete_all
products = Product.create([
{name: 'Arc', must_have: true, :on_market_on => DateTime.new(2012, 8, 12),
description: 'Drawing inspiration from tensile fabric structures, the form of the "arc" table is generated by software developed to create flowing architectural designs. The sculptural base is a single sweeping form anchored by three legs - between each extension, the material curves upwards to balance the table top. The top is a tempered glass disc, measuring either 140 or 150 centimetres in diameter, and is available in an extra light finish. Three thin stainless steel plates are UV bonded to the glass and allow the base to be safely and discreetly secured using just three small screws.Early prototypes used self-skinning polyurethane foam and aluminium to determine the form the base of the table would take. However for production, the design team investigated the possible use of "Ductal", a self-coloured, lightweight fibre-filled concrete material previously used by the practice for building projects. Its strength and comparative lightness presented an interesting paradox and the material can be moulded to allow the wall thickness and details to be accurately controlled. Ductal is also waterproof and the mass-coloured base ensures the colour stays fresh throughout its lifespan.', image_url: 'imagearc.jpg',
tech_image_url: 'tech_imagearc.jpg',datasheet: 'height 110 cm <br>width 100 cm<br>depth 90cm<br>available colors: white, blue, red'},

{name: 'Less less', must_have: true, :on_market_on => DateTime.new(2006, 8, 12),
description: 'A metal table the strength of which lies in a play on corners and folds. Less is a complete range of tables, low and high, rectangular and square.
The Less table becomes even less, not only thanks to its minimal cleancut lines but also in terms of weight, since the sheet metal used previously has been wholly replaced by lightweight aluminium. Less, Less now comes in a dazzling new livery of bold new colours.', image_url: 'imagelessless.jpg',
datasheet: 'height 166 cm<br>width 100 cm'},

{name: 'Biotab', must_have: false, :on_market_on => DateTime.new(2010, 8, 12),
description: 'Series of extendable tables characterized by the accurate and refined workmanship of the junction between the top and the solid wood leg. The table extensions are central and rest
on a sliding frame which allows the table top to slide leaving the legs at the table ends, thus maximizing the usability of the open table.', image_url: 'imagebiotab.jpg',
datasheet: 'height 120 cm<br> width 150 cm<br>available colors: wood, black'} ,

{name: 'Viola', must_have: true, :on_market_on => DateTime.new(2012, 8, 12),
description: 'A bed in total wood which stands out for its clear lines and discreet presence. The curved headboard, designed to make rest more comfortable, gives substance to the design highlighting its shape at the same time. Viola is offered in the classic HBC essences: dark and grey oak, wengé or American walnut and the innovative open grain finish in the HBC range colours which underline the beauty of the materials.', image_url: 'letti/legno.jpg',
datasheet: 'height 80cm<br> width 210cm<br>length 220cm<br>available colors: wood, white'},

{name: 'Wave', must_have: false, :on_market_on => DateTime.new(2011, 7, 12),
description: 'Taut lines are a sign of modern elegance: the low headboard version of the Wave range also incorporates the functionality of the moving cushion support. Precision of volumes, surfaces and functional accuracy of each detail: two support elements in chrome-plated steel set directly on the floor hide a practical cylinder that enables the bed to slide easily.', image_url: 'letti/legno sottile.jpg',
datasheet: 'height 80cm<br> width 210cm<br>length 220cm<br>available colors: wood, white'},

{name: 'Jolly', must_have: true, :on_market_on => DateTime.new(2012, 9, 12),
description: 'pacious and functional, this wardrobe, from the English taste, is equipped with every comfort.
In addition to a large number of shelves, drawers and clothes hanging tubes, inside the wardrobe there are the tie rack, the pants holder and the adjustable mirror', image_url: 'armadi/legno.jpg',
datasheet: 'height 200cm<br> width 240cm<br>depth 90cm<br>available colors: wood'},

{name: 'Moma', must_have: false, :on_market_on => DateTime.new(2011, 9, 11),
description: 'This is magnificent example of a wardrobe with a splendid central strip. The focus here is on the harmonious central plaques with a background in zebrano wood and a rosette skilfully made of little sheets of various different quality woods, each one mounted by hand. The structure is solid wood with sliding doors, the interior of the wardrobe is made of wood with a natural (unstained) polished finish, to give a sense of luminosity. Internal illumination that lights up automatically when the doors are slid open is available on request.', image_url: 'armadi/strisce3.jpg',
datasheet: 'height 200cm<br> width 240cm<br>depth 90cm<br>available colors: white, black'},

{name: 'Hope', must_have: true, :on_market_on => DateTime.new(2007, 9, 4),
description: 'Liveability, design, colour, flexibility, ergonomics and the well-pondered use of raw materials, products built following the principles of materials which are separable for recycling. Quality and fast, innovative services. These are the key words Manerba puts into practice to face radical change which evolving technology and society now require. With the mission to create transformable work areas and living areas and with an eye to the feelings of working women, always more attentive in re-creating welcoming, warm and well-kept environments. ', image_url: 'ufficio/ufficio6.jpg',
datasheet: 'available colors: grey oak wood veneer, ziricote wood veneer'},

{name: 'Low', must_have: false, :on_market_on => DateTime.new(2013, 6, 14),
description: 'Liveability, design, colour, flexibility, ergonomics and the well-pondered use of raw materials, products built following the principles of materials which are separable for recycling. Quality and fast, innovative services. These are the key words Manerba puts into practice to face radical change which evolving technology and society now require. With the mission to create transformable work areas and living areas and with an eye to the feelings of working women, always more attentive in re-creating welcoming, warm and well-kept environments. ', image_url: 'ufficio/ufficio4.jpg',
datasheet: 'available colors: grey oak wood veneer, ziricote wood veneer'},

{name: 'Dream', must_have: true, :on_market_on => DateTime.new(2006, 6, 14),
description: 'Large-size seats for handy and comfortable use. A very versatile system made up of plain, linear shapes. The cushions set causally on top overlap the continuous profile of the backrest to create different seat configurations. The seats project from the
overall shape of the load bearing structures, protecting the base and emphasizing the comfort of the large seat surfaces.', image_url: 'divani/angolopiatto.jpg',
datasheet: 'available colors: white, blue, green'}

                          ])

#DESIGNERS
Designer.delete_all
designers = Designer.create([{name: 'Enrico Coveri', bio: 'Enrico Coveri was born in Florence, Italy in 1952. He studied at the Accadema delle Belle Arti in Florence. In 1973, he began working as freelance designer, creating knitwear and sportswear lines for three collections, Toché, Gentry and Tycos making his mark by being one of the first designers to use soft pastel shades. He moved to Paris in 1978 to work at the Espace Cardin, the vast design institute set up by Pierre Cardin. Shortly after that, he returned to Italy and established his own company in 1979. Each season the company produced a ready-to-wear women\'s line and several less expensive boutique collections for men, women, teenagers, and children, as well as a vast array of subsidiary Coveri accessory products such as shoes, bags, hats, scarves, and gloves. Enrico exceptionally collaborated this year with HBC for a special line of design furniture',
                              image_url: 'fotoenrico.jpg',top: false},
			     {name: 'Marc Sadler', bio: 'Marc Sadler was born in Austria. He is a French citizen and at present lives in Milan. He graduated from the Ecole Nationale Supérieure des Arts Décoratifs (Paris) in 1968, at the end of the first industrial design course (it had the well-chosen definition of esthétique industrielle), a branch of learning that was already regarded as a separated branch of learning as to architecture. Devoted from the start to the experimentation with plastic materials (subject of his degree thesis and of his personal curiosity) since the 70ies he brought to perfection the very first ski-boot in thermoplastic material, subsequently industrialized by the Italian firm Caber.The way was opened towards a long and fruitful collaboration with Caber (afterwards known as Lotto), that led him to the patenting of the ski-boot with symmetric shell, the most successful ski-boot for several years all over the world. This represented the origin of his specialization as a ?designer for sport sector, that led him to the cooperation with the most important multinational sport Companies in the United States, Asia, Japan and Europe.His professional path allowed him to mature a varied experience regarding both materials and manufacturing processes. The source from sports field, where research and experimentation on new materials and working technologies are more widely diffused, allowed him to export ideas and knowledge towards fields in which design (with a classical meaning) is deep-rooted for a long time.Stateless in a broad sense (he lived and practiced his job in France, United States, Asia and Italy), toady he is (probably) temporarily settled in Milan. He constantly cooperates with very important firms in the fields of home furnishing, big and small household appliances, lighting, and of more technically advanced products as well, in addition to his collaborations in the field of sport.',
                              image_url: 'fotosadler.jpg',top: true},
			     {name: 'Margherita Bonetti', bio: 'Margherita (Meggy) Bonetti is a young italian designer, who is attending her Bachelor in Design at the Naba Academy in Milan. In spite of her young age she has obtained impressive results and won many important prizes, Createur de l\'Annee (Paris), Compasso d\'Oro ADI (Milano), Design Plus (Frankfurt), Auszeichnung fur Gutes Design (Hannover).',
                              image_url: 'fotomeggy.jpg',top: false},
			     {name: 'Valentina Giulini', bio: 'Valentina Giulini is a young italian designer. She achieved a Bachelor in Design at the Naba Academy in Milan and a Master of Arts in Graphic Branding and Identity at the London College of Communication. She has worked for many major companies in Italy and in London. HBC has required her collaboration for a collection of chairs of fashionable design',
                              image_url: 'fotovale.jpg',top: false}
                            ])

#PRODUCT TYPES
ProductType.delete_all
product_types = ProductType.create([{name: 'Tables', image_url: 'tablesimage.jpg'},
                                     {name: 'Chairs', image_url: 'chairsimage.jpg'},
                                     {name: 'Beds', image_url: 'ferro2.jpg'},
                                     {name: 'Wardrobe', image_url: 'strisce.jpg'},
                                     {name: 'Sofa', image_url: 'baltimora1.jpg'},
                                     {name: 'Kitchen', image_url: 'mattonella.jpg'},
                                     {name: 'Office', image_url: 'ufficio4.jpg'}
                                    ])

#EVENTS
Event.delete_all
events = Event.create([{name: 'Salone del mobile 2013', location: 'The new Milan Fair Rho Pero is one of the largest fairground world-wide with 8 large pavilions for indoor exhibitions and 60,000 squared meters for outdoor exhibitions. The Milan Fair is one of the most important in the international trade fair sectors.The new fairground of Milan in Rho Pero has a distance of 15 km to Milan city center. It is connected by the motorways A4 Turin-Milan-Venice, A8/A9 Milan-Airport Malpensa, Varese/Como as well as by the West tangential. For visitors and exhibitors are more than 14.000 parking lots with modern park system at disposal. The red underground line 1 has been extended up to the fair stop Rho. Thus the new fairground can be attained easily from the Milan city center by public transport.',
                        description: '"The Milan International Furniture Fair (Italian: Salone Internazionale del Mobile di Milano) is a furniture fair held annually in Milan. It is the largest trade fair of its kind in the world. The show showcases the latest in furniture and design from countries around the world. It is considered a leading venue for the display of new products by designers of furniture, lighting and other home furnishings. The show, also known as "Salone", "Milano Salone" and "Milan Design Week," is held every year, usually in April, in the FieraMilano complex in the Milan metropolitan area town of Rho.', image_url: 'salone.jpg'},
                      {name: 'Expo 2015', location: 'Rho',
                        description: 'Evento internazionale', image_url: 'expo.jpg'}
                      ])

#SERVICES
Service.delete_all
services = Service.create([{name: 'Personalization',
                        description: 'Scegli quello che vuoi'}
                      ])

#COUNTRIES
Country.delete_all
countries = Country.create([{name: 'Australia'},
                            {name: 'France'},
                            {name: 'Germany'},
                            {name: 'Italy'},
                            {name: 'Spain'},
                            {name: 'UK'},
                            {name: 'USA'},
                            {name: 'China'}
                           ])

#COUNTIES
County.delete_all
counties = County.create([
                          {name: 'Lombardia'},
                          {name: 'Basilicata'},
                          {name: 'Marche'},
                          {name: 'Veneto'},
                          {name: 'Lazio'},
                          {name: 'Kent'},
                          {name: 'Sussex'},
                          {name: 'California'},
                          {name: 'New York'},
                          {name: 'Texas'},
                          {name: 'Massachussets'},
                          {name: 'Shangai'                          }
                         ])

#SHOPS
Shop.delete_all
shops = Shop.create([
                        {address: "Largo Quinto Alpini,15, Milano", email:"best.shop@mail.it",
                         name:"HBC flagship store Milano", county: "Lombardia", country: "Italy",
                         tel:"02/567890", shop_type:"flagship store"}   ,
                        {address: "via Baldinucci, 78, Milano", email:"hbc.shop@mail.it",
                         name:"HBC design store", county: "Lombardia", country: "Italy",
                         tel:"02/4567890", shop_type:"flagship store"} ,
                        {address: "via Davanzati, 78, Milano", email:"hbc.shop@mail.it",
                        name:"Only Design", county: "Lombardia", country: "Italy",
                        tel:"02/4567890", shop_type:"flagship store"},
                        {address: "5th Avenue, New York", email:"hbc.shop@mail.it",
                         name:"Home Sweet Home", county: "New York", country: "Usa",
                         tel:"02/4567890", shop_type:"flagship store"},
                        {address: "4th Street, New York", email:"hbc.shop@mail.it",
                        name:"Home Sweet Home", county: "New York", country: "Usa",
                        tel:"02/4567890", shop_type:"flagship store"},
                        {address: "Wall Street, New York", email:"hbc.shop@mail.it",
                         name:"Home Sweet Home", county: "New York", country: "Usa",
                         tel:"02/4567890", shop_type:"flagship store"},
                        {address: "989, Chang Le Road, The Center, 19 Piano 200031 Shanghai - CINA", email:"hbc.shop@mail.it",
                         name:"Home Sweet Home", county: "New York", country: "Usa",
                         tel:"02/4567890", shop_type:"flagship store"}

                    ])


#PARTNERS
Partner.delete_all
partners = Partner.create([
                                         {name: 'Dada', website: 'http://www.dadaweb.it'},
                                         {name: 'Scavolini', website: 'http://www.scavolini.com'},
                                         {name: 'Calligaris', website: 'http://www.calligaris.it'}
                                     ])

#PRODUCT IMAGES
ProductImage.delete_all
product_images = ProductImage.create([
                            {image_url: "imagearc2.jpg", product_id: 0},
                            {image_url: "imagearc3.jpg", product_id: 0},
                            {image_url: "imagearc4.jpg", product_id: 0},
                            {image_url: "imagearc5.jpg", product_id: 0},
                            {image_url: "armadi/strisce.jpg", product_id: 6},
                            {image_url: "armadi/strisce2.jpg", product_id: 6},
                            {image_url: "armadi/strisce3.jpg", product_id: 6}
                                     ])



#EVENT IMAGES
EventImage.delete_all
event_images = EventImage.create([
                        {image_url: "salone1.jpg", event_id: 0},
                        {image_url: "salone2.jpg", event_id: 0},
                        {image_url: "salone3.jpg", event_id: 0},
                        {image_url: "salone4.jpg", event_id: 0},
                        {image_url: "salone5.jpg", event_id: 0}
                    ])

#ADMIN
Admin.delete_all
admin = Admin.create([{name: 'Matteo', psw: 'Foccoli'}])

#JOIN TABLE DESIGNERS_PRODUCTS
products[0].designers << Designer.find_by_name('Enrico Coveri')
products[1].designers << Designer.find_by_name('Enrico Coveri')
products[2].designers << Designer.find_by_name('Enrico Coveri')
products[0].designers << Designer.find_by_name('Marc Sadler')

#JOIN TABLE EVENT_PRODUCTS
products[0].events << Event.find_by_name('Salone del mobile 2013')
products[0].events << Event.find_by_name('Expo 2015')

#JOIN TABLE SERVICE_PRODUCTS
products[0].services << Service.all


#JOIN TABLE PRODUCTS_SUGGESTED_PRODUCTS
products[0].suggested_products << Product.find_by_name('Biotab')
products[0].suggested_products << Product.find_by_name('Less less')

#JOIN TABLE PRODUCTS_SHOPS
products[0].shops << Shop.all
products[1].shops << Shop.all


#RELATION PRODUCT_TYPE_PRODUCTS
product_types[0].products << Product.where(:name => "Arc")
product_types[0].products << Product.where(:name => "Biotab")
product_types[0].products << Product.where(:name => "Less less")
product_types[2].products << Product.where(:name => "Viola")
product_types[2].products << Product.where(:name => "Wave")
product_types[3].products << Product.where(:name => "Jolly")
product_types[3].products << Product.where(:name => "Moma")
product_types[6].products << Product.where(:name => "Hope")
product_types[6].products << Product.where(:name => "Low")



#RELATION PARTNER_PRODUCTS
partners[0].products << Product.where(:name => "Arc")

#RELATION COUNTRY_COUNTIES
countries[3].counties << County.where(:name=>'Lombardia')
countries[3].counties << County.where(:name=>'Basilicata')
countries[3].counties << County.where(:name=>'Marche')
countries[3].counties << County.where(:name=>'Veneto')
countries[3].counties << County.where(:name=>'Lazio')
countries[5].counties << County.where(:name=>'Kent')
countries[5].counties << County.where(:name=>'Sussex')
countries[6].counties << County.where(:name=>'California')
countries[6].counties << County.where(:name=>'New York')
countries[6].counties << County.where(:name=>'Texas')
countries[6].counties << County.where(:name=>'Massachussets')

#RELATION PRODUCT_IMAGES
products[0].product_images << ProductImage.where(:product_id=>0)

#RELATION EVENT_IMAGES
events[0].event_images <<  EventImage.where(:event_id=>0)