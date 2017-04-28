module ItemType exposing (..)

type ItemType
  = Animal
  | Bug
  | Flower
  | Fruit
  | Nature
  | Part
  | Strange
  | Vegetable

itemTypeToString : ItemType -> String
itemTypeToString itemType =
  case itemType of
    Animal -> "Animal"
    Bug -> "Bug"
    Flower -> "Flower"
    Fruit -> "Fruit"
    Nature -> "Nature"
    Part -> "Part"
    Strange -> "Strange"
    Vegetable -> "Vegetable"
