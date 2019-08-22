module LcsTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Lcs exposing (lcs)
import Test exposing (..)


suite : Test
suite =
    describe "Longest common subsequence" <|
        [ test "finds lcs of aa and aa" <| \_ -> Expect.equal "aa" <| lcs "aa" "aa"
        , test "finds lcs of 1234 and 23" <| \_ -> Expect.equal "23" <| lcs "1234" "23"
        , test "finds lcs of 23 and 1234" <| \_ -> Expect.equal "23" <| lcs "23" "1234"
        , test "finds lcs of xx12xx34xx and yy2yy4yy" <| \_ -> Expect.equal "24" <| lcs "xx12xx34xx" "yy2yy4yy"
        ]
