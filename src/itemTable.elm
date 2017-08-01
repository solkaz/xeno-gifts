module ItemTable exposing (view)

import Html exposing (Html)
import Table
import Item exposing (Item)
import Msg exposing (Msg)
import FriendshipColumn exposing (friendshipColumn)
import ItemNameColumn exposing (itemNameColumn)
import ItemTypeColumn exposing (itemTypeColumn)
import LocationColumn exposing (locationColumn)
import Character exposing (..)


view : Table.State -> List Item -> Html Msg
view tableState items =
    Table.view config tableState items


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
