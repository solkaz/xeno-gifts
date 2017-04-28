module Main exposing (..)

import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (placeholder)
import Table

import Item exposing (Item, items)
import FriendshipColumn exposing (friendshipColumn)
import LocationColumn exposing (locationColumn)
import Character exposing (..)

main =
  Html.program
    { init= init items
    , update = update
    , view = view
    , subscriptions = \_ -> Sub.none
    }

-- MODEL

type alias Model =
  { items : List Item
  , tableState : Table.State
  }

init : List Item -> ( Model, Cmd Msg )
init itemList =
  let
    model =
      { items = items
      , tableState = Table.initialSort "Location"
      }
  in
    ( model, Cmd.none )

-- UPDATE

type Msg
  = SetTableState Table.State

update: Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    SetTableState newState ->
      ( { model | tableState = newState }
      , Cmd.none
      )

-- VIEW

view : Model -> Html Msg
view { items, tableState } =
  div []
    [ h1 [] [ text "Xeno-Gifts" ]
    , Table.view config tableState items
    ]

config : Table.Config Item Msg
config =
  Table.config
    { toId = .name
    , toMsg = SetTableState
    , columns =
        [ Table.stringColumn "Name" .name
        , locationColumn
        , Table.stringColumn "Item Type" .itemType
        , friendshipColumn Shulk
        , friendshipColumn Fiora
        , friendshipColumn Dunban
        , friendshipColumn Reyn
        , friendshipColumn Sharla
        , friendshipColumn Riki
        , friendshipColumn Melia
        ]
    }
