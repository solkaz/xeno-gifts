module View exposing (..)

import Html exposing (Html, div, h1, input, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Item exposing (Item)
import ItemTable
import Model exposing (Model)
import Msg exposing (Msg)
import Location exposing (Location(Colony9))
import LocationSet
import LocationToggler
import Set exposing (Set)
import Debug exposing (log)


view : Model -> Html Msg
view { items, tableState, query, bannedLocations } =
    let
        lowerQuery : String
        lowerQuery =
            String.toLower query

        matchedItems : List Item
        matchedItems =
            items
                |> List.filter (\x -> not (LocationSet.member (x.location) bannedLocations))
                |> (\x ->
                        if String.isEmpty query then
                            x
                        else
                            List.filter ((String.contains lowerQuery) << (String.toLower << .name)) x
                   )
    in
        div []
            [ h1 [] [ text "Xeno-Gifts" ]
            , input [ placeholder "Item name", onInput Msg.SetQuery ] []
            , LocationToggler.view bannedLocations
            , ItemTable.view tableState matchedItems
            ]
