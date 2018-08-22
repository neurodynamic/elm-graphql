-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RemoveStarPayload exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RemoveStarPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.RemoveStarPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The starrable.
-}
starrable : SelectionSet decodesTo Github.Interface.Starrable -> Field decodesTo Github.Object.RemoveStarPayload
starrable object =
    Object.selectionField "starrable" [] object identity
