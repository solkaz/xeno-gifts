module Msg exposing (..)

import Table
import Location exposing (Location)


type Msg
    = SetTableState Table.State
    | SetQuery String
    | ToggleLocation Location
