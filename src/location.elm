module Location exposing (..)

type Location
  = Colony9
  | TephraCave
  | Colony6
  | BionisLeg
  | EtherMine
  | SatoriMarsh
  | BionisInterior
  | MaknaForest
  | FrontierVillage
  | ErythSea
  | Alcamoth
  | HighEntiaTomb
  | ValakMountain
  | SwordValley
  | GalahadFortress
  | FallenArm
  | MechonisField
  | CentralFactory
  | Agniratha
  | PrisonIsland
  | Other

locationToString: Location -> String
locationToString location =
  case location of
    Colony9 -> "Colony 9"
    TephraCave -> "Tephra Cave"
    Colony6 -> "Colony 6"
    BionisLeg -> "Bionis' Leg"
    EtherMine -> "Ether Mine"
    SatoriMarsh -> "Satori Marsh"
    MaknaForest -> "Makna Forest"
    BionisInterior -> "Bionis' Interior"
    FrontierVillage -> "Frontier Village"
    ErythSea -> "Eryth Sea"
    Alcamoth -> "Alcamoth"
    HighEntiaTomb -> "High  Entia Tomb"
    ValakMountain -> "Valak Mountain"
    SwordValley -> "Sword Valley"
    GalahadFortress -> "Galahad Fortress"
    FallenArm -> "Fallen Arm"
    MechonisField -> "Mechonis Field"
    CentralFactory -> "Central Factory"
    Agniratha -> "Agniratha"
    PrisonIsland -> "Prison Island"
    Other -> "Other"
locationSortingRank: Location -> Int
locationSortingRank location =
  case location of
    Colony9 -> 1
    TephraCave -> 2
    BionisLeg -> 3
    Colony6 -> 4
    EtherMine -> 5
    SatoriMarsh -> 6
    BionisInterior -> 7
    MaknaForest -> 8
    FrontierVillage -> 9
    ErythSea -> 10
    Alcamoth -> 11
    HighEntiaTomb -> 12
    ValakMountain -> 13
    SwordValley -> 14
    GalahadFortress -> 15
    FallenArm -> 16
    MechonisField -> 17
    CentralFactory -> 18
    Agniratha -> 19
    PrisonIsland -> 20
    Other -> 21
