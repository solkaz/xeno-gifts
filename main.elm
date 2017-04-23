import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (placeholder)
import Table

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

type alias Item =
  { name: String
  , location: String
  , shulk: Int
  , fiora: Int
  , dunban: Int
  , reyn: Int
  , sharla: Int
  , riki: Int
  , melia: Int
  }

items: List Item
items =
  [ Item "Leaf Coil" "Central Factory" 10 -12 6 2 2 8 2
  , Item "Snow Transistor" "Mechonis Field" 10 -6 6 8 2 4 -4
  ]

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
        , Table.stringColumn "Location" .location
        , Table.intColumn "Shulk" .shulk
        , Table.intColumn "Fiora" .fiora
        , Table.intColumn "Dunban" .dunban
        , Table.intColumn "Reyn" .reyn
        , Table.intColumn "Sharla" .sharla
        , Table.intColumn "Riki" .riki
        , Table.intColumn "Melia" .melia
        ]
    }
