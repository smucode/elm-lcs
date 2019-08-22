module Lcs exposing (..)


lcs : String -> String -> String
lcs strA strB =
    lcsInternal (String.split "" strA) (String.split "" strB) []
        |> String.concat


lcsInternal : List a -> List a -> List a -> List a
lcsInternal a b res =
    case ( a, b ) of
        ( ax :: arest, bx :: brest ) ->
            if ax == bx then
                lcsInternal arest brest <| res ++ [ ax ]

            else
                let
                    x =
                        lcsInternal a brest res

                    y =
                        lcsInternal arest b res
                in
                if List.length x > List.length y then
                    x

                else
                    y

        _ ->
            res
