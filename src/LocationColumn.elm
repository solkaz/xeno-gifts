module LocationColumn exposing (..)

import Item exposing (Item)
import Location exposing (..)
import Table


locationColumn : Table.Column Item a
locationColumn =
    Table.customColumn
        { name = "Location"
        , viewData = locationToString << .location
        , sorter = Table.increasingOrDecreasingBy (.location >> locationSortingRank)
        }
