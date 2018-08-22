-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Topic exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Topic
selection constructor =
    Object.selection constructor


id : Field Github.Scalar.Id Github.Object.Topic
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The topic's name.
-}
name : Field String Github.Object.Topic
name =
    Object.fieldDecoder "name" [] Decode.string


{-| A list of related topics, including aliases of this topic, sorted with the most relevant
first.
-}
relatedTopics : SelectionSet decodesTo Github.Object.Topic -> Field (List decodesTo) Github.Object.Topic
relatedTopics object =
    Object.selectionField "relatedTopics" [] object (identity >> Decode.list)
