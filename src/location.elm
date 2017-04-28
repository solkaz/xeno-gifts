module Location exposing (..)

type Location
  = Colony9
  | TephraCave
  | Colony6
  | EtherMine
  | SatoriMarsh
  | FrontierVillage
  | Alcamoth
  | FallenArm
  | MechonisField
  | CentralFactory
  | Agniratha

locationToString: Location -> String
locationToString location =
  case location of
    Colony9 -> "Colony 9"
    TephraCave -> "Tephra Cave"
    Colony6 -> "Colony 6"
    EtherMine -> "Ether Mine"
    SatoriMarsh -> "Satori Marsh"
    FrontierVillage -> "Frontier Village"
    Alcamoth -> "Alcamoth"
    FallenArm -> "Fallen Arm"
    MechonisField -> "Mechonis Field"
    CentralFactory -> "Central Factory"
    Agniratha -> "Agniratha"

locationSortingRank: Location -> Int
locationSortingRank location =
  case location of
    Colony9 -> 1
    TephraCave -> 2
    Colony6 -> 4
    EtherMine -> 5
    SatoriMarsh -> 6
    FrontierVillage -> 9
    Alcamoth -> 11
    FallenArm -> 16
    MechonisField -> 17
    CentralFactory -> 18
    Agniratha -> 19
