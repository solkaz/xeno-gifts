module LocationColumn exposing (..)

import Table
import Item exposing (Item)
import Location exposing (..)

locationColumn : Table.Column Item a
locationColumn =
  Table.customColumn
  { name = "Location"
  , viewData = locationToString << .location
  , sorter = Table.increasingOrDecreasingBy (.location >> locationSortingRank )
  }
