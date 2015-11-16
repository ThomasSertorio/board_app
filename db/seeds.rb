# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emile = Expert.create(
  name: "Emile",
  tagline: "Passionné et polyvalent",
  description: "Plombier, bricoleur, jardinier, cours de roller, aide à la vie quotidienne, Emile est humaniste et aime rendre service.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/07/Emile_profil.png"
  )

arnaud = Expert.create(
  name: "Arnaud",
  tagline: "A l'écoute de son quartier",
  description: "Toujours à 2 pas de chez vous, Arnaud vous rend service pour un check-in, récupérer vos colis ou vous aider à poser une étagère.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/08/Arnaud_profil.png"
  )

samara = Expert.create(
  name: "Samara",
  tagline: "Les enfants d'abord",
  description: "Beaucoup de facilité avec les enfants, Samara vous propose également des petits plats orientaux et se met à la disposition du quartier.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/06/Samara_profil.png"
  )

anne_lise = Expert.create(
  name: "Anne-Lise",
  tagline: "Tant d'aventures!",
  description: "Bon sens et entraide, Anne-Lise a appris cela à l’étranger. Elle est disponible pour vos enfants, vos livraisons et vos voyageurs AirBnB.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/09/Anne-Lise_profil.png"
  )

alexandra = Expert.create(
  name: "Alexandra",
  tagline: "Sérieuse et dédiée",
  description: "Etudiante avocate (barreau) polyglotte, Alexandra garde vos enfants et leur donne des cours particuliers jusqu’à la Terminale.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/06/Alexandra_profil.png"
  )

lea = Expert.create(
  name: "Lea",
  tagline: "Graphisme!",
  description: "Etudiante en graphisme et pleine d’idées, Léa garde vos enfants, les aide en solfège et peut aussi s’occuper du ménage de la maison.",
  avatar_url: "http://openloge.fr/loges/10/wp-content/uploads/sites/2/2015/09/Lea_profil.png"
  )


emile_bricolage = Service.create(
  name: "Bricolage",
  description: "Besoin d'intervenir pour de la plomberie? Un joint de baignoire à changer? Un conseil pour installer votre chauffe-eau? Je suis disponible!",
  cost: "Intervention à partir de 20€/h",
  expert: emile )

emile_checkin = Service.create(
  name: "Checkin",
  description: "Besoin de quelqu'un pour accueillir vos voyageurs AirBnB? je connais bien le quartier",
  cost: "Checkin 20€",
  expert: emile )

emile_roller = Service.create(
  name: "Cours de Roller",
  description: "Initiation, conseil d'achat ou d'entretien, partenaires de randonnées... Je suis votre patineur",
  cost: "A discuter",
  expert: emile )

arnaud_bricolage = Service.create(
  name: "Bricolage",
  description: "Spécialiste de la menuiserie... de l'étagère et du rabot! Une porte qui grince faîtes moi appel!",
  cost: "Intervention à partir de 20€/h",
  expert: arnaud )

arnaud_checkin = Service.create(
  name: "Checkin",
  description: "Besoin de quelqu'un pour accueillir vos voyageurs AirBnB? je connais bien le quartier",
  cost: "Checkin 20€",
  expert: arnaud )

samara_babysitting = Service.create(
  name: "Babysitting",
  description: "Avec un BAFA de la patience et de l'énergie... je saurai m'occuper de vos enfants!",
  cost: "10€ / h",
  expert: samara )

samara_kitchen = Service.create(
  name: "Petits plats",
  description: "J'adore cuisiner! Je cuisine tout le temps et je suis la chef des plats exotiques! Commandez moi un repas pour vos anniverasaires, soirées, etc. Je m'occuppe de tout!",
  cost: "A discuter",
  expert: samara )

anne_lise_babysitting = Service.create(
  name: "Babysitting",
  description: "Bilingue et pleine d'attention, Anne-Lise est un trésor pour vos enfants :)",
  cost: "10€ / h",
  expert: anne_lise )

alexandra_babysitting = Service.create(
  name: "Babysitting",
  description: "Droit et droiture pour Alexandra",
  cost: "10€ / h",
  expert: alexandra )

lea_babysitting = Service.create(
  name: "Babysitting",
  description: "Vos enfants aiment bien dessiner? Cela tombe bien!",
  cost: "10€ / h",
  expert: lea )

lea_menage = Service.create(
  name: "Ménage",
  description: "besoin d'un ménage d'après soirée? d'un grand ménage de printemps?'",
  cost: "12€ / h",
  expert: lea )


data = [
  {author: "Pete Hunt", content: "This is one comment"},
  {author: "Jordan Walke", content: "This is *another* comment"}
];
Comment.create(data)


