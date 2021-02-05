-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.IssueOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which issue connections can be ordered.

  - CreatedAt - Order issues by creation time
  - UpdatedAt - Order issues by update time
  - Comments - Order issues by comment count

-}
type IssueOrderField
    = CreatedAt
    | UpdatedAt
    | Comments


list : List IssueOrderField
list =
    [ CreatedAt, UpdatedAt, Comments ]


decoder : Decoder IssueOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    "COMMENTS" ->
                        Decode.succeed Comments

                    _ ->
                        Decode.fail ("Invalid IssueOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : IssueOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"

        Comments ->
            "COMMENTS"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe IssueOrderField
fromString enumString____ =
    case enumString____ of
        "CREATED_AT" ->
            Just CreatedAt

        "UPDATED_AT" ->
            Just UpdatedAt

        "COMMENTS" ->
            Just Comments

        _ ->
            Nothing
