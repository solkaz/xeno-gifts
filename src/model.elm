module Model exposing (..)

import Table
import Item exposing (Item, items)


type Msg
    = SetTableState Table.State
    | SetQuery String


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


init : ( Model, Cmd Msg )
init =
    ( initModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetTableState newState ->
            ( { model | tableState = newState }
            , Cmd.none
            )

        SetQuery newQuery ->
            ( { model | query = newQuery }
            , Cmd.none
            )


subscriptions : a -> Sub Msg
subscriptions =
    \_ -> Sub.none
