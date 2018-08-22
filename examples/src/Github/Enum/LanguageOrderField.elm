-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.LanguageOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which language connections can be ordered.

  - Size - Order languages by the size of all files containing the language

-}
type LanguageOrderField
    = Size


decoder : Decoder LanguageOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "SIZE" ->
                        Decode.succeed Size

                    _ ->
                        Decode.fail ("Invalid LanguageOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : LanguageOrderField -> String
toString enum =
    case enum of
        Size ->
            "SIZE"
