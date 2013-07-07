# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#PRODUCTS (problemi nell'assegnamento data)
Product.delete_all
products = Product.create([{name: 'Arc', must_have: true,
                            description: 'Fantastic table oh my god', image_url: 'imagearc.jpg',
                           tech_image_url: 'tech_imagearc.jpg',datasheet: 'height 110 cm, width 100 cm'},
                           {name: 'Less less', must_have: true,
                            description: 'Fantastic table', image_url: 'imagelessless.jpg',
                            datasheet: 'height 166 cm, width 100 cm'},
                            {name: 'Biotab', must_have: false,
                            description: 'Fantastic biotable', image_url: 'imagebiotab.jpg',
                            datasheet: 'height 120 cm, width 80 cm'}
                          ])

#DESIGNERS
Designer.delete_all
designers = Designer.create([{name: 'Dante Alighieri', bio: 'Nel mezzo del cammin di nostra vita',
                              image_url: 'fotodante.jpg',top: true},
                             {name: 'Giorgio Armani', bio: 'il più famoso stilista italiano',
                              image_url: 'fotogiorgio.jpg',top: true},
                             {name: "Enrico Coveri", bio: 'è il più scarso dei nostri designer',
                              image_url: 'fotoenrico.jpg',top: false}
                            ])

#PRODUCT TYPES
ProductType.delete_all
product_types = ProductType.create([{name: 'tables', image_url: 'tablesimage.jpg'},
                                     {name: 'chairs', image_url: 'chairsimage.jpg'}
                                    ])

#EVENTS
Event.delete_all
events = Event.create([{name: 'Salone del mobile 2013', location: 'The new Milan Fair Rho Pero is one of the largest fairground world-wide with 8 large pavilions for indoor exhibitions and 60,000 squared meters for outdoor exhibitions. The Milan Fair is one of the most important in the international trade fair sectors.The new fairground of Milan in Rho Pero has a distance of 15 km to Milan city center. It is connected by the motorways A4 Turin-Milan-Venice, A8/A9 Milan-Airport Malpensa, Varese/Como as well as by the West tangential. For visitors and exhibitors are more than 14.000 parking lots with modern park system at disposal. The red underground line 1 has been extended up to the fair stop Rho. Thus the new fairground can be attained easily from the Milan city center by public transport.',
                        description: '"The Milan International Furniture Fair (Italian: Salone Internazionale del Mobile di Milano) is a furniture fair held annually in Milan. It is the largest trade fair of its kind in the world. The show showcases the latest in furniture and design from countries around the world. It is considered a leading venue for the display of new products by designers of furniture, lighting and other home furnishings. The show, also known as "Salone", "Milano Salone" and "Milan Design Week," is held every year, usually in April, in the FieraMilano complex in the Milan metropolitan area town of Rho.', image_url: 'salone.jpg'},
                      {name: 'Expo 2015', location: 'Rho',
                        description: 'Evento internazionale', image_url: 'expo.jpg'}
                      ])

#COUNTRIES
Country.delete_all
countries = Country.create([{name: 'Australia'},
                            {name: 'France'},
                            {name: 'Germany'},
                            {name: 'Italy'},
                            {name: 'Spain'},
                            {name: 'UK'},
                            {name: 'USA'}
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
                          {name: 'Massachussets'}
                         ])

#SHOPS
Shop.delete_all
shops = Shop.create([
                        {address: "Largo Quinto Alpini,15, Milano", email:"best.shop@mail.it",
                         name:"HBC flagship store Milano", county: "Lombardia", country: "Italy",
                         tel:"02/567890", shop_type:"flagship store"}
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



#JOIN TABLE DESIGNERS_PRODUCTS
products[0].designers << Designer.find_by_name('Dante Alighieri')
products[0].designers << Designer.find_by_name('Giorgio Armani')

#JOIN TABLE EVENT_PRODUCTS
products[0].events << Event.find_by_name('Salone del mobile 2013')
products[0].events << Event.find_by_name('Expo 2015')

#JOIN TABLE PRODUCTS_SUGGESTED_PRODUCTS
products[0].suggested_products << Product.find_by_name('Biotab')
products[0].suggested_products << Product.find_by_name('Less less')


#RELATION PRODUCT_TYPE_PRODUCTS
product_types[0].products << Product.where(:name => "Arc")
product_types[0].products << Product.where(:name => "Biotab")

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

#RELATION EVENT_IMAGES
events[0].event_images <<  EventImage.where(:event_id=>0)