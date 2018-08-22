-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Object.Droid exposing (..)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Episode
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Swapi.Object.Droid
selection constructor =
    Object.selection constructor


{-| Which movies they appear in.
-}
appearsIn : Field (List Swapi.Enum.Episode.Episode) Swapi.Object.Droid
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Swapi.Enum.Episode.decoder |> Decode.list)


{-| Url to a profile picture for the character.
-}
avatarUrl : Field String Swapi.Object.Droid
avatarUrl =
    Object.fieldDecoder "avatarUrl" [] Decode.string


{-| The friends of the droid, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Swapi.Interface.Character -> Field (List decodesTo) Swapi.Object.Droid
friends object =
    Object.selectionField "friends" [] object (identity >> Decode.list)


{-| The ID of the droid.
-}
id : Field Swapi.Scalar.Id Swapi.Object.Droid
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Swapi.Scalar.Id)


{-| The name of the droid.
-}
name : Field String Swapi.Object.Droid
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The primary function of the droid.
-}
primaryFunction : Field (Maybe String) Swapi.Object.Droid
primaryFunction =
    Object.fieldDecoder "primaryFunction" [] (Decode.string |> Decode.nullable)
