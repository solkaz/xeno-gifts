module Main exposing (..)

import Html exposing (program)
import Model exposing (Model)
import Msg exposing (Msg)
import View exposing (view)


main =
    program
        { init = Model.init
        , update = Model.update
        , view = view
        , subscriptions = Model.subscriptions
        }
