-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.AddProjectCardPayload exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

{-| The edge from the ProjectColumn's card connection.
-}
cardEdge : SelectionSet decodesTo GithubNoFormat.Object.ProjectCardEdge
 -> SelectionSet decodesTo GithubNoFormat.Object.AddProjectCardPayload
cardEdge object_ =
      Object.selectionForCompositeField "cardEdge" [] (object_) (identity)


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) GithubNoFormat.Object.AddProjectCardPayload
clientMutationId =
      Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The ProjectColumn
-}
projectColumn : SelectionSet decodesTo GithubNoFormat.Object.Project
 -> SelectionSet decodesTo GithubNoFormat.Object.AddProjectCardPayload
projectColumn object_ =
      Object.selectionForCompositeField "projectColumn" [] (object_) (identity)