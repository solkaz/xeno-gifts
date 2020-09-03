module Model exposing (..)

import Item exposing (Item, items)
import Msg exposing (Msg)
import Table


type alias Model =
    { items : List Item
    , tableState : Table.State
    , query : String
    }


initModel : Model
initModel =
    { items = items
    , tableState = Table.initialSort "Location"
    , query = ""
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( initModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg.SetTableState newState ->
            ( { model | tableState = newState }
            , Cmd.none
            )

        Msg.SetQuery newQuery ->
            ( { model | query = newQuery }
            , Cmd.none
            )


subscriptions : a -> Sub Msg
subscriptions =
    \_ -> Sub.none
