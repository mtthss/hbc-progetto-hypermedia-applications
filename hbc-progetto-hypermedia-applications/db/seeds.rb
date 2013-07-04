# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
products = Product.create([{name: 'Arc', type: 'table', must_have: true,
                            description: 'Fantastic table oh my god', image_url: 'imageArc.jpg',
                           datasheet: 'height 110 cm, width 100 cm'},
                           {name: 'Less less', type: 'table', must_have: true,
                            description: 'Fantastic table', image_url: 'imagelessless.jpg',
                            datasheet: 'height 166 cm, width 100 cm'},
                            {name: 'Biotab', type: 'table', must_have: false,
                            description: 'Fantastic biotable', image_url: 'imagebiotab.jpg',
                            datasheet: 'height 120 cm, width 80 cm'}
                          ])
#non viene assegnata la data perchè crea problemi, da rivedere

Designer.delete_all
designers = Designer.create([{name: 'Dante Alighieri', bio: 'Nel mezzo del cammin di nostra vita',
                              image_url: 'fotodante.jpg',top: true},
                             {name: 'Giorgio Armani', bio: 'è un piglianculo',
                              image_url: 'fotogiorgio.jpg',top: true},
                             {name: "Enrico Coveri", bio: 'è il più scarso dei nostri designer',
                              image_url: 'fotoenrico.jpg',top: false}
                            ])

Product_type.delete_all
product_types = Product_type.create([{name: 'tables', image_url: 'tablesimage.jpg'},
                                     {name: 'chairs', image_url: 'chairsimage.jpg'}
                                    ])