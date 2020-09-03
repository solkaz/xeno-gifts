module Main exposing (main)

import Browser
import Model exposing (init, update)
import View exposing (view)


main =
    Browser.element
        { init = init
        , update = Model.update
        , view = view
        , subscriptions = Model.subscriptions
        }
