module FriendshipColumn exposing (friendshipColumn)

import Table

import Item exposing (Item)

friendshipColumn : (String, (Item -> Int)) -> Table.Column Item a
friendshipColumn friend =
  let
    (name, selector) = friend
  in
    Table.customColumn
    { name = name
    , viewData = friendshipView << selector
    , sorter = Table.decreasingOrIncreasingBy selector
    }

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
