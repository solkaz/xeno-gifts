module Item exposing ( Item, items )

import ItemType exposing (..)
import Location exposing (..)

type alias Item =
  { name: String
  , location: Location
  , itemType: ItemType
  , shulk: Int
  , fiora: Int
  , dunban: Int
  , reyn: Int
  , sharla: Int
  , riki: Int
  , melia: Int
  }

items: List Item
items =
  -- Colony 9 Collection
  [ Item "Sweet Wasabi" Colony9 Vegetable -1 8 -1 6 2 14 -4
  , Item "Dance Apple" Colony9 Fruit -2 -2 2 -2 10 10 2
  , Item "Strong Dandelion" Colony9 Flower 2 6 4 -12 10 -8 12
  , Item "Prairie Dragonfly" Colony9 Bug -8 -6 20 4 -4 16 -4
  , Item "Blue Chain" Colony9 Part 30 -6 6 2 -4 -12 4
  , Item "Plate Snow" Colony9 Strange -6 4 16 10 4 4 -2
  , Item "Cool Potato" Colony9 Vegetable 2 10 2 4 -10 14 -4
  , Item "Black Kiwi" Colony9 Fruit 2 -4 2 -10 12 2 12
  , Item "Moon Flower" Colony9 Flower 8 2 -2 6 -4 -2 10
  , Item "Giant Hornet" Colony9 Bug 2 -8 8 16 -6 8 -8
  , Item "Rabbit Diode" Colony9 Part 8 12 -6 2 2 -4 6
  , Item "Rainbow Zirconia" Colony9 Strange 4 4 4 -6 6 6 8
  , Item "Red Lettuce" Colony9 Vegetable -8 2 2 12 14 8 -10
  , Item "Dawn Hydrangea" Colony9 Flower -4 4 -2 -2 6 4 4
  , Item "White Beetle" Colony9 Bug 2 6 10 4 -8 10 -10
  , Item "Chewy Radish" Colony9 Vegetable -2 16 -4 2 4 10 4
  , Item "Sorrow Beetle" Colony9 Bug 4 -4 14 2 -4 14 4
  -- Tephra Cave Collection
  , Item "Clear Almond" TephraCave Fruit 6 -2 -4 -12 6 6 14
  , Item "Insanity Mint" TephraCave Flower 2 -8 -2 4 2 4 12
  , Item "Shin Newt" TephraCave Animal 4 6 2 18 -10 -10 4
  , Item "Brown Butterfly" TephraCave Bug 8 2 6 6 -12 16 -8
  , Item "Kneecap Rock" TephraCave Nature 2 2 12 6 16 -4 -2
  , Item "Leaf Mystery" TephraCave Strange 4 -2 4 6 -4 10 10
  , Item "Bright Fig" TephraCave Fruit 2 -2 -2 10 18 10 2
  , Item "Night Tulip" TephraCave Flower 2 4 6 -10 10 -8 10
  , Item "Cave Rat" TephraCave Animal 2 14 -10 4 2 -6 8
  , Item "Gold Caterpillar" TephraCave Bug -4 2 8 4 -4 10 2
  , Item "Confusion Ivy" TephraCave Nature 6 -6 10 4 8 -2 -6
  , Item "Steel Silk" TephraCave Strange 4 4 8 4 4 2 18
  , Item "Dark Grape" TephraCave Fruit 4 4 -14 -14 12 6 14
  , Item "Shin Gecko" TephraCave Animal 8 6 -2 2 2 -4 6
  , Item "Rumble Stonefly" TephraCave Bug 16 -2 10 -6 2 2 -2
  , Item "Clarity Moss" TephraCave Nature 2 6 4 10 -2 -2 -4
  , Item "Happy Rabbit" TephraCave Animal -6 18 -10 10 6 -6 6
  -- Bionis' Leg Collection
  , Item "Hot Taro" BionisLeg Vegetable -10 10 6 -2 2 8 2
  , Item "Sour Gooseberry" BionisLeg Fruit 2 -18 -2 -4 24 16 4
  , Item "White Ladybird" BionisLeg Bug 2 6 8 4 -2 10 -12
  , Item "Mat Ice" BionisLeg Nature -4 -6 14 8 12 2 -6
  , Item "Rusty Bolt" BionisLeg Part 10 -6 2 6 4 -2 8
  , Item "Gold Dust Illusion" BionisLeg Strange -2 4 4 -6 16 4 6
  , Item "Juicy Broccoli" BionisLeg Vegetable -12 14 2 6 2 8 -2
  , Item "Red Durian" BionisLeg Fruit -2 6 -4 -2 10 12 6
  , Item "Hill Firefly" BionisLeg Bug 2 2 10 2 -6 8 -8
  , Item "Bluesky Bark" BionisLeg Nature 4 -2 10 4 4 -2 8
  , Item "Winding Gear" BionisLeg Part 24 -8 6 4 4 -12 2
  , Item "Devious Gravity" BionisLeg Strange 4 -2 10 12 4 -4 4
  , Item "Spicy Cabbage" BionisLeg Vegetable -4 10 -2 24 4 8 -16
  , Item "Walnut Grape" BionisLeg Fruit 8 -2 -4 -12 10 2 12
  , Item "Moth Crawler" BionisLeg Bug -6 -2 2 6 -6 30 -10
  , Item "Pione Stone" BionisLeg Nature 2 -6 12 -2 8 -2 2
  , Item "White Songbird" BionisLeg Strange 4 4 4 10 6 10 -8
  , Item "Hard Lotus" BionisLeg Vegetable -6 -6 2 4 16 14 -6
  , Item "Humming Plum" BionisLeg Fruit 2 -2 2 -6 2 12 6
  , Item "Queen Locust" BionisLeg Bug 2 6 2 -4 2 12 -4
  , Item "Death Bangle" BionisLeg Strange -10 6 18 6 12 4 6
  , Item "Fire Tarantula" BionisLeg Bug 2 14 6 -6 -4 8 10
  -- Colony 6 Collection
  , Item "Cute Orchid" Colony6 Flower 4 12 -8 -2 2 4 10
  , Item "Pyro Lizard" Colony6 Animal 8 12 -10 8 2 -12 8
  , Item "Verdant Eternity" Colony6 Strange 6 -8 4 10 4 12 4
  , Item "Sirius Anemone" Colony6 Flower 18 8 2 -4 4 -10 14
  , Item "Amblygon Turtle" Colony6 Animal 2 4 -2 12 6 -12 6
  , Item "White Night Rod" Colony6 Strange 6 -2 4 16 6 4 2
  , Item "Spirit Clematis" Colony6 Flower -8 6 12 -8 2 -2 16
  , Item "Dobercorgi" Colony6 Animal 10 6 -4 10 -2 -16 22
  -- Ether Mine Collection
  , Item "Light Bat" EtherMine Animal 4 8 -4 14 -6 -8 6
  , Item "Black Beetle" EtherMine Bug 2 2 12 6 -8 8 -8
  , Item "Charcoal Leg" EtherMine Nature 2 2 6 4 8 6 -6
  , Item "Black Chip" EtherMine Part 14 -12 12 8 2 -8 10
  , Item "Love Crane" EtherMine Strange -2 16 -2 4 10 4 2
  , Item "Black Frog" EtherMine Animal 2 6 2 16 -10 -10 8
  , Item "Rubber Mantis" EtherMine Bug -8 -2 16 4 -6 24 -4
  , Item "Ether Pebble" EtherMine Nature 2 6 10 6 6 2 -12
  , Item "Ready Coil" EtherMine Part 10 2 2 2 -2 6 2
  , Item "Fire Abron" EtherMine Strange -6 10 12 2 4 6 4
  , Item "Yellow Cat" EtherMine Animal 2 2 -2 20 8 -4 6
  , Item "Mystery Firefly" EtherMine Bug 16 2 8 2 -10 2 2
  , Item "Rumble Coal" EtherMine Nature 2 2 6 4 12 -6 -4
  -- Satorl Marsh Collection

  -- Bionis' Interior Collection
  , Item "Sarsaparilla" BionisInterior Vegetable -6 2 2 -2 16 8 2
  , Item "Blood Worm" BionisInterior Animal 4 26 -16 10 -2 -4 2
  , Item "Tap Tap Tap" BionisInterior Strange 2 10 -2 4 -2 4 10
  , Item "Black Liver Bean" BionisInterior Vegetable 2 12 8 8 4 -2 -2
  , Item "Azure Mouse" BionisInterior Animal 14 6 -4 12 -6 -12 6
  , Item "High Entia Jewel" BionisInterior Strange 4 4 6 -12 12 2 12
  , Item "Happy Duck" BionisInterior Animal 2 -2 -2 18 2 2 2
  -- Makna Forest Collection

  -- Frontier Village Collection
  , Item "Spicy Nut" FrontierVillage Fruit 8 -12 -4 -6 18 6 6
  , Item "Rainbow Bug" FrontierVillage Bug 2 2 8 -6 8 10 -14
  , Item "Rumble Box" FrontierVillage Strange 4 4 4 -2 -2 4 16
  , Item "Crimson Citrus" FrontierVillage Fruit 2 4 -10 -14 10 10 12
  , Item "Empress Beetle" FrontierVillage Bug 4 -4 12 10 -10 8 6
  , Item "Black Panel" FrontierVillage Strange 18 4 10 2 4 -12 6
  -- Eryth Sea Collection

  -- Alcamoth Collection
  , Item "Cool Lemon" Alcamoth Fruit -6 -2 -6 -6 12 14 8
  , Item "Mystic Dahlia" Alcamoth Flower -4 4 -2 -2 4 -2 18
  , Item "Ha Ha Ha" Alcamoth Strange 4 16 -2 10 4 4 2
  , Item "Heart Peach" Alcamoth Fruit -2 2 4 2 12 10 4
  , Item "Stardrop" Alcamoth Flower -8 6 12 -8 2 -2 14
  , Item "Thunder Atmos" Alcamoth Strange 2 6 6 10 12 10 2
  -- High Entia Tomb Collection

  -- Valak Mountain Collection

  -- Sword Valley Collection

  -- Galahad Fortress Collection

  -- Fallen Arm Collection

  -- Mechonis Field Collection
  , Item "Snow Transistor" MechonisField Part 10 -6 6 8 2 4 -4
  -- Central Factory Collection
  , Item "Leaf Coil" CentralFactory Part 10 -12 6 2 2 8 2
  -- Agniratha Collection

  -- Prison Island Collection

  -- Other Collection
  ]
