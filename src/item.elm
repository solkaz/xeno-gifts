module Item exposing ( Item, items )

type alias Item =
  { name: String
  , location: String
  , itemType: String
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
  [ Item "Sweet Wasabi" "Colony 9" "Vegetable" -1 8 -1 6 2 14 -4
  , Item "Dance Apple" "Colony 9" "Fruit" -2 -2 2 -2 10 10 2
  , Item "Strong Dandelion" "Colony 9" "Flower" 2 6 4 -12 10 -8 12
  , Item "Prairie Dragonfly" "Colony 9" "Bugs" -8 -6 20 4 -4 16 -4
  , Item "Blue Chain" "Colony 9" "Part" 30 -6 6 2 -4 -12 4
  , Item "Plate Snow" "Colony 9" "Strange" -6 4 16 10 4 4 -2
  , Item "Cool Potato" "Colony 9" "Vegetable" 2 10 2 4 -10 14 -4
  , Item "Black Kiwi" "Colony 9" "Fruit" 2 -4 2 -10 12 2 12
  , Item "Moon Flower" "Colony 9" "Flower" 8 2 -2 6 -4 -2 10
  , Item "Giant Hornet" "Colony 9" "Bugs" 2 -8 8 16 -6 8 -8
  , Item "Rabbit Diode" "Colony 9" "Part" 8 12 -6 2 2 -4 6
  , Item "Rainbow Zirconia" "Colony 9" "Strange" 4 4 4 -6 6 6 8
  , Item "Red Lettuce" "Colony 9" "Vegetable" -8 2 2 12 14 8 -10
  , Item "Dawn Hydrangea" "Colony 9" "Flower" -4 4 -2 -2 6 4 4
  , Item "White Beetle" "Colony 9" "Bugs" 2 6 10 4 -8 10 -10
  , Item "Chewy Radish" "Colony 9" "Vegetable" -2 16 -4 2 4 10 4
  , Item "Sorrow Beetle" "Colony 9" "Bugs" 4 -4 14 2 -4 14 4
  -- Tephra Cave Collection

  -- Bionis' Leg Collection

  -- Colony 6 Collection

  -- Ether Mine Collection

  -- Satorl Marsh Collection

  -- Bionis' Interior Collection

  -- Makna Forest Collection

  -- Frontier Village Collection

  -- Eryth Sea Collection

  -- Alcamoth Collection

  -- High Entia Tomb Collection

  -- Valak Mountain Collection

  -- Sword Valley Collection

  -- Galahad Fortress Collection

  -- Fallen Arm Collection

  -- Mechonis Field Collection
  , Item "Snow Transistor" "Mechonis Field" "Part" 10 -6 6 8 2 4 -4
  -- Central Factory Collection
  , Item "Leaf Coil" "Central Factory" "Part" 10 -12 6 2 2 8 2
  -- Agniratha Collection

  -- Prison Island Collection

  -- Other Collection

  ]
