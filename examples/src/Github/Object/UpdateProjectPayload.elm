-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.UpdateProjectPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UpdateProjectPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.UpdateProjectPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The updated project.
-}
project : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.UpdateProjectPayload
project object =
    Object.selectionField "project" [] object identity
