-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.TeamOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which team connections can be ordered.

  - Name - Allows ordering a list of teams by name.

-}
type TeamOrderField
    = Name


list : List TeamOrderField
list =
    [ Name ]


decoder : Decoder TeamOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NAME" ->
                        Decode.succeed Name

                    _ ->
                        Decode.fail ("Invalid TeamOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamOrderField -> String
toString enum =
    case enum of
        Name ->
            "NAME"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe TeamOrderField
fromString enumString____ =
    case enumString____ of
        "NAME" ->
            Just Name

        _ ->
            Nothing
