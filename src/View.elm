module View exposing (..)

import Html exposing (Html, div, h1, input, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Item exposing (Item, items)
import ItemTable
import Model exposing (Model)
import Msg exposing (Msg)


view : Model -> Html Msg
view { items, tableState, query } =
    let
        lowerQuery : String
        lowerQuery =
            String.toLower query

        matchedItems : List Item
        matchedItems =
            if String.isEmpty lowerQuery then
                items
            else
                List.filter (String.contains lowerQuery << String.toLower << .name) items
    in
        div []
            [ h1 [] [ text "Xeno-Gifts" ]
            , input [ placeholder "Item name", onInput Msg.SetQuery ] []
            , ItemTable.view tableState matchedItems
            ]
