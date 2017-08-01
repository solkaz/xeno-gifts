module Main exposing (..)

import Html exposing (Html, div, h1, input, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Table
import Item exposing (Item, items)
import FriendshipColumn exposing (friendshipColumn)
import ItemNameColumn exposing (itemNameColumn)
import ItemTypeColumn exposing (itemTypeColumn)
import LocationColumn exposing (locationColumn)
import Character exposing (..)


main =
    Html.program
        { init = init items
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { items : List Item
    , tableState : Table.State
    , query : String
    }


init : List Item -> ( Model, Cmd Msg )
init itemList =
    let
        model =
            { items = items
            , tableState = Table.initialSort "Location"
            , query = ""
            }
    in
        ( model, Cmd.none )



-- UPDATE


type Msg
    = SetTableState Table.State
    | SetQuery String


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



-- VIEW


view : Model -> Html Msg
view { items, tableState, query } =
    let
        lowerQuery =
            String.toLower query

        matchedItems =
            if String.isEmpty lowerQuery then
                items
            else
                List.filter (String.contains lowerQuery << String.toLower << .name) items
    in
        div []
            [ h1 [] [ text "Xeno-Gifts" ]
            , input [ placeholder "Item name", onInput SetQuery ] []
            , Table.view config tableState matchedItems
            ]


config : Table.Config Item Msg
config =
    Table.config
        { toId = .name
        , toMsg = SetTableState
        , columns =
            [ itemNameColumn
            , locationColumn
            , itemTypeColumn
            , friendshipColumn Shulk
            , friendshipColumn Fiora
            , friendshipColumn Dunban
            , friendshipColumn Reyn
            , friendshipColumn Sharla
            , friendshipColumn Riki
            , friendshipColumn Melia
            ]
        }
