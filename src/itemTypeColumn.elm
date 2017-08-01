module ItemTypeColumn exposing (itemTypeColumn)

import Table
import Item exposing (Item)
import ItemType exposing (..)


itemTypeColumn : Table.Column Item a
itemTypeColumn =
    Table.customColumn
        { name = "Item Type"
        , viewData = itemTypeToString << .itemType
        , sorter = Table.increasingOrDecreasingBy (.itemType >> itemTypeToString)
        }
