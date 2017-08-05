module LocationColumn exposing (..)

import Table
import Item exposing (Item)
import Location exposing (Location)


locationColumn : Table.Column Item a
locationColumn =
    Table.customColumn
        { name = "Location"
        , viewData = Location.toString << .location
        , sorter = Table.increasingOrDecreasingBy (.location >> Location.sortingRank)
        }
