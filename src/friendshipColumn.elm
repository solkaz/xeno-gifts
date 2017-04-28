module FriendshipColumn exposing (friendshipColumn)

import Table

import Character exposing (..)
import Item exposing (Item)

friendshipColumn : Character -> Table.Column Item a
friendshipColumn friend =
  let
    (name, selector) = friendColumnAttrs friend
  in
    Table.customColumn
    { name = name
    , viewData = friendshipView << selector
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

friendshipView : Int -> String
friendshipView modifier =
  let
    absModifier = abs modifier
  in
    if absModifier > 0 && absModifier < 15 then
      toString modifier ++ "\n♥"
    else if absModifier >= 15 && absModifier < 21 then
      toString modifier ++ "\n♥♥"
    else if absModifier >= 21 && absModifier < 31 then
      toString modifier ++ "\n♥♥♥"
    else
      toString modifier ++ "\n♥♥♥♥"
