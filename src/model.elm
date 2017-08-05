module Model exposing (..)

import Msg exposing (Msg)
import Table
import Item exposing (Item)
import Location exposing (Location)
import LocationSet exposing (LocationSet)


type alias Model =
    { items : List Item
    , tableState : Table.State
    , query : String
    , displayedLocations : LocationSet
    }


initModel : Model
initModel =
    { items = Item.all
    , tableState = Table.initialSort "Location"
    , query = ""
    , displayedLocations = LocationSet.init
    }


init : ( Model, Cmd Msg )
init =
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

        Msg.ToggleLocation location ->
            ( { model | displayedLocations = LocationSet.toggle location model.displayedLocations }
            , Cmd.none
            )

        Msg.DisableAllLocations ->
            ( { model | displayedLocations = LocationSet.empty }, Cmd.none )

        Msg.EnableAllLocations ->
            ( { model | displayedLocations = LocationSet.full }, Cmd.none )


subscriptions : a -> Sub Msg
subscriptions =
    \_ -> Sub.none
