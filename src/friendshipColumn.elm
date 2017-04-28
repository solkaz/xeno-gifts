module FriendshipColumn exposing (friendshipColumn)

import Table
import Html exposing (br, text)
import Html.Attributes exposing (style)
import Character exposing (..)
import Item exposing (Item)

friendshipColumn : Character -> Table.Column Item a
friendshipColumn friend =
  let
    (name, selector) = friendColumnAttrs friend
  in
    Table.veryCustomColumn
    { name = name
    , viewData = viewFriendship << selector
    , sorter = Table.decreasingOrIncreasingBy selector
    }

friendColumnAttrs: Character -> (String, (Item -> Int))
friendColumnAttrs character =
  case character of
    Shulk -> ("Shulk", .shulk)
    Fiora -> ("Fiora", .fiora)
    Dunban -> ("Dunban", .dunban)
    Reyn -> ("Reyn", .reyn)
    Sharla -> ("Sharla", .sharla)
    Riki -> ("Riki", .riki)
    Melia -> ("Melia", .melia)

modifierCellColor : Int -> String
modifierCellColor modifier =
  if modifier < 0 then
    "red"
  else
    "green"

modifierToHearts : Int -> String
modifierToHearts modifier =
  let
    absModifier = abs modifier
  in
    if absModifier > 0 && absModifier < 15 then
      "♥"
    else if absModifier >= 15 && absModifier < 21 then
      "♥♥"
    else if absModifier >= 21 && absModifier < 31 then
      "♥♥♥"
    else
      "♥♥♥♥"

viewFriendship : Int -> Table.HtmlDetails msg
viewFriendship modifier =
  Table.HtmlDetails [ style [("background-color", modifierCellColor modifier)] ]
  [ text (toString modifier)
  , br [][]
  , text (modifierToHearts modifier)
  ]
