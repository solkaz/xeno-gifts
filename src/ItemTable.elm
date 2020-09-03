module ItemTable exposing (view)

import Character exposing (..)
import FriendshipColumn exposing (friendshipColumn)
import Html exposing (Html)
import Item exposing (Item)
import ItemNameColumn exposing (itemNameColumn)
import ItemTypeColumn exposing (itemTypeColumn)
import LocationColumn exposing (locationColumn)
import Msg exposing (Msg)
import Table


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
