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

  -- Satorl Marsh Collection

  -- Bionis' Interior Collection

  -- Makna Forest Collection

  -- Frontier Village Collection
  , Item "Spicy Nut" FrontierVillage Fruit 8 -12 -4 -6 18 6 6
  -- Eryth Sea Collection

  -- Alcamoth Collection

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
