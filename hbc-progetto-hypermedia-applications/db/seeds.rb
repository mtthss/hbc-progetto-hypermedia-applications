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
                           datasheet: 'height 110 cm, width 100 cm'},
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
                             {name: 'Giorgio Armani', bio: 'è un piglianculo',
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
events = Event.create([{name: 'Salone del mobile 2013', location: 'Milano',
                        description: 'Bell\'evento pieno di piglianculo', image_url: 'saloneimage.jpg'},
                      {name: 'Expo 2015', location: 'Rho',
                        description: 'Evento internazionale', image_url: 'saloneimage.jpg'}
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
                        {address: "Milan, largo V alpini 15", email:"best.shop@mail.it",
                         name:"HBC flagship store Milan", county: "Lombardia", country: "Italy",
                         tel:"02/567890", shop_type:"flagship store"}
                    ])

#JOIN TABLE DESIGNERS_PRODUCTS
products[0].designers << Designer.find_by_name('Dante Alighieri')
products[0].designers << Designer.find_by_name('Giorgio Armani')

#JOIN TABLE EVENT_PRODUCTS
products[0].events << Event.find_by_name('Salone del mobile 2013')
products[0].events << Event.find_by_name('Expo 2015')

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
