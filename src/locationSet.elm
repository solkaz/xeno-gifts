module LocationSet exposing (..)

import Set exposing (Set)
import Location exposing (Location)


type alias LocationSet =
    Set String


init : LocationSet
init =
    Set.empty


member : Location -> LocationSet -> Bool
member location locationSet =
    Set.member (Location.toString location) locationSet


insert : Location -> LocationSet -> LocationSet
insert location locationSet =
    Set.insert (Location.toString location) locationSet


remove : Location -> LocationSet -> LocationSet
remove location locationSet =
    Set.remove (Location.toString location) locationSet


toggle : Location -> LocationSet -> LocationSet
toggle location locationSet =
    if member location locationSet then
        remove location locationSet
    else
        insert location locationSet
