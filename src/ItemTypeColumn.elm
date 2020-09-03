module ItemTypeColumn exposing (itemTypeColumn)

import Item exposing (Item)
import ItemType exposing (..)
import Table


itemTypeColumn : Table.Column Item a
itemTypeColumn =
    Table.customColumn
        { name = "Item Type"
        , viewData = itemTypeToString << .itemType
        , sorter = Table.increasingOrDecreasingBy (.itemType >> itemTypeToString)
        }
