# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Booking.destroy_all
Place.destroy_all



p = Place.new(name: "Grand appartement",
          address: "15 avenue de la République",
          zipcode: 75011,
          city: "Paris",
          description: "Classique trois-pièces bourgeois parisien de 68 m2.Salon, cuisine, et salle de bains sont partagés
          avec l'hôte (matin et soir). Dans la journée, vous êtes comme chez vous. A 2 pas des Grands Boulevards, Canal St Martin, Opera et République",
          capacity: 6,
          rooms: 2,
          beds: 3,
          rate: 95,
          available: "true")
p.save


r = Place.new(name: "Notre Dame - Sous les Toits 2 Paris",
          address: "3 rue Mazarine",
          zipcode: 75006,
          city: "Paris",
          description: "Beaucoup de charme et de confort pour ce deux pièces ensoleillé, refait à neuf et bien équipé.
Peut loger jusqu'à quatre personnes.
Emplacement parfait pour visiter Paris, à deux pas de Notre Dame.",
          capacity: 4,
          rooms: 1,
          beds: 2,
          rate: 90,
          available: "true")
r.save

s = Place.new(name: "Heart of Bastille / Marais Paris",
          address: "4 rue de Poitou",
          zipcode: 75003,
          city: "Paris",
          description: "APPARTEMENTEn plein coeur du quartier de Charonne (BASTILLE), à seulement 15 minutes
          à pied du Marais, Vous trouverez dans un bel immeuble pierre de taille, ce studio de 25 m carré,
          clair et calme décoré avec goût.",
          capacity: 2,
          rooms: 1,
          beds: 1,
          rate: 110,
          available: "true")
s.save

t = Place.new(name: "Charmant studio au coeur du 19è",
          address: "22 avenue Gambetta",
          zipcode: 75020,
          city: "Paris",
          description: "Superbe studio de 15 m² refait à neuf, à côté de l'Hôtel de Ville et aux portes du Marais.
          Situé dans un immeuble calme et ancien, aux magnifiques escaliers classés monument historique du XVIIe siècle.A deux pas du métro hôtel de ville, vous êtes au coeur de la Ville, entre le centre Pompidou-Beaubourg,
          Notre-Dame-de-Paris et le Louvre.Cet appartement est équipé d'un coin cuisine tout équipé",
          capacity: 2,
          rooms: 1,
          beds: 1,
          rate: 110,
          available: "true")
t.save


u = Place.new(name: "Center Paris Large Apartment Studio",
          address: "1 rue du Renard",
          zipcode: 75007,
          city: "Paris",
          description: "Located in the heart of Paris.
Fully renovated, it is modern and cosy, offers everything you could possible want for a dream holiday or
weekend in Paris: with charm, quality and good taste, this address is perfect for visiting Paris. The rates includes utilities (electricity, water), cleaning at arrival and departure and applicable taxes.
The kitchen is fully equipped and the bathroom and bed are complete with fresh linen and towels.
",
          capacity: 6,
          rooms: 2,
          beds: 4,
          rate: 180,
          available: "true")
u.save

v = Place.new(name: "Chambre avec vue sur tout Paris !",
          address: "34 rue Caulaincourt",
          zipcode: 75018,
          city: "Paris",
          description: "nous avons 2 chambres à louer dans un grand appartement en collocation situé à Colonel
          Fabien à deux pas du canal St Martin et du parc des Buttes Chaumont. La première chambre est orientée
          plein sud et donne sur un grand balcon duquel on peut apercevoir tout Paris.
          L'autre chambre donne aussi sur un balcon mais de l'autre côté donc la vue est moins spectaculaire. Deux autres personnes, Laurie et Vincent vivent dans les deux autres chambres de l'appartement dans une ambiance décontractée et conviviale. Un grand salon donne sur le même balcon que la chambre dans lequel on s'est permis de mettre un petit piano à queue !Coté salle de bain, c'est douche et baignoire au (website hidden) une grande cuisine vient compléter notre appartement
",
          capacity: 2,
          rooms: 1,
          beds: 1,
          rate: 80,
          available: "true")
v.save

v = Place.new(name: "Appartement Cosy Rue des Rosiers",
          address: "34 rue des rosiers",
          zipcode: 75003,
          city: "Paris",
          description: "A 25m2 cosy studio located in Rue des Rosiers, one of the most famous street in Le Marais. With a 3m40 ceiling height, sandstone wall and exposed beams; it is newly renovated and stylishly furnished for you to have a comfortable stay in Paris.",
          capacity: 2,
          rooms: 1,
          beds: 1,
          rate: 80,
          available: "true")
v.save

w = Place.new(name: "Heart of Paris /Montorgueil (QUIET)",
          address: "5 rue montgorgueil",
          zipcode: 75002,
          city: "Paris",
          description: "Situé rue st sauveur très près de la rue Montorgueil, ce charmant studio est à quelques minutes des Halles, au coeur du quartier Montorgueil célèbre avec son grand choix de produits alimentaires de qualité, des restaurants et des pubs. Il est également à une courte distance de marche des principaux points d'intérêt tels que: Le Louvre, Notre Dame, Ile de la Cité ou Ile Saint (website hidden) vous voulez faire l’expérience d’un Paris authentique et coloré, ne ratez pas le quartier Montorgueil. A cinq minutes à peine de Châtelet, ce paradis pour piétons amoureux de gastronomie est idéal pour découvrir le paris authentique.",
          capacity: 8,
          rooms: 3,
          beds: 4,
          rate: 210,
          available: "true")
w.save

a = Place.new(name: "A island in Paris",
          address: "40 quai des orfèvres",
          zipcode: 75002,
          city: "Paris",
          description: "Si vous rêviez d'espionner Esmeralda, de suivre les Aristochats ou simplement d'admirer les vitraux de Notre-dame de nuit… C'est ici ! Mon charmant studio est situé au centre de Paris sur l'ile de la Cité ! Romantique et historique… ",
          capacity: 5,
          rooms: 2,
          beds: 3,
          rate: 140,
          available: "true")
a.save

b = Place.new(name: "Appartement haussmannien",
          address: "40 rue des martyrs",
          zipcode: 75009,
          city: "Paris",
          description: "The studio is a typical Parisian attic room /5th floor/no lift; Very bright-facing south./during very hot days it is hot-like in any place without air conditioner.
A 5 minute walk and you are in Notre dame -by the river
In the heart of Marais-one of the most historical and trendy districts of Paris.Metro ,city bicycles ,museums-all is within an easy reach
And I will be here to welcome you and explain to you how to make things easy",
          capacity: 7,
          rooms: 3,
          beds: 4,
          rate: 160,
          available: "true")
b.save




