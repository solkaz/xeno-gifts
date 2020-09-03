module View exposing (..)

import Browser
import Html exposing (div, h1, input, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Item exposing (Item)
import ItemTable
import Model exposing (Model)
import Msg exposing (Msg)


view : Model -> Browser.Document Msg
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
    { title = "Xenogifts"
    , body =
        [ div []
            [ h1 [] [ text "Xeno-Gifts" ]
            , input [ placeholder "Item name", onInput Msg.SetQuery ] []
            , ItemTable.view tableState matchedItems
            ]
        ]
    }
