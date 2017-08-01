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
import Model exposing (Model)
import Msg exposing (Msg)


main =
    Html.program
        { init = Model.init
        , update = Model.update
        , view = view
        , subscriptions = \_ -> Sub.none
        }



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
            , input [ placeholder "Item name", onInput Msg.SetQuery ] []
            , Table.view config tableState matchedItems
            ]


config : Table.Config Item Msg
config =
    Table.config
        { toId = .name
        , toMsg = Msg.SetTableState
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
