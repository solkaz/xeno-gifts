module ItemNameColumn exposing (itemNameColumn)

import Table
import Html exposing (a, text)
import Html.Attributes exposing (href)
import Item exposing (Item)
import String exposing (append, map)


makeWikiLink : String -> String
makeWikiLink name =
    map
        (\c ->
            if c == ' ' then
                '_'
            else
                c
        )
        name
        |> append "http://www.xenoblade.wikia.com/"


itemNameColumn : Table.Column Item a
itemNameColumn =
    Table.veryCustomColumn
        { name = "Name"
        , viewData = viewName << .name
        , sorter = Table.increasingOrDecreasingBy .name
        }


viewName : String -> Table.HtmlDetails msg
viewName name =
    Table.HtmlDetails []
        [ a [ href (makeWikiLink name) ] [ text name ]
        ]
