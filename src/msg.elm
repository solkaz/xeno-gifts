module Msg exposing (..)

import Table


type Msg
    = SetTableState Table.State
    | SetQuery String
