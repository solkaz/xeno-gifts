module LocationToggler exposing (..)

import Html exposing (..)
import Html.Attributes exposing (checked, for, name, type_)
import Html.Events exposing (onClick)
import Location exposing (Location)
import LocationSet exposing (LocationSet)
import Msg exposing (Msg)


view : LocationSet -> Html Msg
view locationSet =
    div []
        (List.map
            (\loc ->
                let
                    locName =
                        Basics.toString loc

                    attrs =
                        [ (type_ "checkbox")
                        , (checked (LocationSet.member loc locationSet))
                        , (name locName)
                        , (onClick (Msg.ToggleLocation loc))
                        ]
                in
                    div []
                        [ (input attrs [])
                        , (label
                            [ for locName ]
                            [ text <| Location.toString loc ]
                          )
                        ]
            )
            Location.all
        )
