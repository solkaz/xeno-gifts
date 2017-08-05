module View exposing (..)

import Html exposing (Html, div, h1, input, text, button)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onClick, onInput)
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
view { items, tableState, query, displayedLocations } =
    let
        lowerQuery : String
        lowerQuery =
            String.toLower query

        matchedItems : List Item
        matchedItems =
            items
                |> List.filter (\x -> LocationSet.member (x.location) displayedLocations)
                |> (\x ->
                        if String.isEmpty query then
                            x
                        else
                            List.filter ((String.contains lowerQuery) << (String.toLower << .name)) x
                   )
    in
        div []
            [ h1 [] [ text "Xeno-Gifts" ]
            , button [ onClick Msg.EnableAllLocations ] [ text "Enable All" ]
            , button [ onClick Msg.DisableAllLocations ] [ text "Disable All" ]
            , input [ placeholder "Item name", onInput Msg.SetQuery ] []
            , LocationToggler.view displayedLocations
            , ItemTable.view tableState matchedItems
            ]
